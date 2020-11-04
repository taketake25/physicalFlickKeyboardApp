#include <esp_now.h>
#include <WiFi.h>
#include <Adafruit_NeoPixel.h>

#define LEDs 13
#define button1 32
#define button2 33
#define r1 26
#define r2 27
#define r3 32
#define r4 33
#define c1 4
#define c2 16
#define c3 17
#define pi 3.141592

/* full color LED definition */
#ifdef __AVR__
#include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif
#define NUMPIXELS 6 // Popular NeoPixel ring size
Adafruit_NeoPixel pixels(NUMPIXELS, LEDs, NEO_GRB + NEO_KHZ800);


int lines[4]={0};
char w[2]={0};
uint8_t key=0;
uint8_t slaveMAC[6] = {0x24, 0x0a, 0xc4, 0x11, 0xf8, 0xb1};


//{
//  {"あ","い","う","え","お"},
//  {"か","き","く","け","こ"},
//  {"さ","し","す","せ","そ"},
//  {"た","ち","つ","て","と"},
//  {"な","に","ぬ","ね","の"},
//  {"は","ひ","ふ","へ","ほ"},
//  {"ま","み","む","め","も"},
//  {"や","ゐ","ゆ","ゑ","よ"},
//  {"ら","り","る","れ","ろ"},
//  {"小","濁","数","半","矢"}, // 小文字の入力として判断するようにしたい
//  {"わ","を","ん","ー"," "},
//  {"！","（","、","）","。"}
//};


// Global copy of slave
esp_now_peer_info_t slave;
#define CHANNEL 0
#define PRINTSCANRESULTS 0
#define DELETEBEFOREPAIR 0


// Init ESP Now with fallback
void InitESPNow() {
  WiFi.disconnect();
  if (esp_now_init() == ESP_OK) {
    Serial.println("ESPNow Init Success");
  }
  else {
    Serial.println("ESPNow Init Failed");
    ESP.restart();
  }
}

// Scan for slaves in AP mode
void ScanForSlave() {
  int8_t scanResults = WiFi.scanNetworks();
  // reset on each scan
  bool slaveFound = 0;
  memset(&slave, 0, sizeof(slave));

  Serial.println("");
  if (scanResults == 0) {
    Serial.println("No WiFi devices in AP Mode found");
  } else {
    Serial.print("Found "); Serial.print(scanResults); Serial.println(" devices ");
    for (int i=0; i<scanResults; ++i) {
      // Print SSID and RSSI for each device found
      String SSID = WiFi.SSID(i);
      int32_t RSSI = WiFi.RSSI(i);
      String BSSIDstr = WiFi.BSSIDstr(i);

      if (PRINTSCANRESULTS) {
        Serial.print(i + 1); Serial.print(": ");
        Serial.print(SSID); Serial.print(" (");
        Serial.print(RSSI); Serial.println(")");
      }
      delay(10);

      // Check if the current device starts with `Slave`
      if (SSID.indexOf("Slave") == 0) {
        // SSID of interest
        Serial.println("Found a Slave.");
        Serial.print(i + 1); Serial.print(": "); Serial.print(SSID); Serial.print(" ["); Serial.print(BSSIDstr); Serial.print("]"); Serial.print(" ("); Serial.print(RSSI); Serial.print(")"); Serial.println("");
        // Get BSSID => Mac Address of the Slave
        int mac[6];
        if ( 6 == sscanf(BSSIDstr.c_str(), "%x:%x:%x:%x:%x:%x",  &mac[0], &mac[1], &mac[2], &mac[3], &mac[4], &mac[5] ) ) {
          for (int ii = 0; ii < 6; ++ii ) {
            slave.peer_addr[ii] = (uint8_t) mac[ii];
          }
        }

        slave.channel = CHANNEL; // pick a channel
        slave.encrypt = 0; // no encryption

        slaveFound = 1;
        // we are planning to have only one slave in this example;
        // Hence, break after we find one, to be a bit efficient
        break;
      }
    }
  }

  if (slaveFound) {
    Serial.println("Slave Found, processing..");
  } else {
    Serial.println("Slave Not Found, trying again.");
  }

  // clean up ram
  WiFi.scanDelete();
}

// Check if the slave is already paired with the master.
// If not, pair the slave with master
bool manageSlave() {
  if (slave.channel == CHANNEL) {
    if (DELETEBEFOREPAIR) {
      deletePeer();
    }
    Serial.print("Slave Status: ");
    // check if the peer exists
    bool exists = esp_now_is_peer_exist(slave.peer_addr);
    if ( exists) {
      Serial.println("Already Paired");
      return true;
    } else {
      // Slave not paired, attempt pair
      esp_err_t addStatus = esp_now_add_peer(&slave);
      if (addStatus == ESP_OK) {
        Serial.println("Pair success");
        return true;
      } else {
        Serial.println("ESPNOW manageSlave Error");
        return false;
      }
    }
  } else {
    // No slave found to process
    Serial.println("No Slave found to process");
    return false;
  }
}

void deletePeer() {
  esp_err_t delStatus = esp_now_del_peer(slave.peer_addr);
  Serial.print("Slave Delete Status: ");
  if (delStatus == ESP_OK) {
    Serial.println("Success");
  } else {
    Serial.println("ESPNOW deletePeer Error");
  }
}

void sendData() {
//  const uint8_t *peer_addr = slave.peer_addr;
  const uint8_t *peer_addr = slaveMAC;
  Serial.print("\nSending: "); Serial.println(key);
  esp_err_t result = esp_now_send(slaveMAC, &key, sizeof(key));
  Serial.print("Send Status: ");
  if (result == ESP_OK) {
    Serial.println("Success");
  } else if (result == ESP_ERR_ESPNOW_NOT_INIT) {
    // How did we get so far!!
    Serial.println("ESPNOW not Init.");
  } else if (result == ESP_ERR_ESPNOW_ARG) {
    Serial.println("Invalid Argument");
  } else if (result == ESP_ERR_ESPNOW_INTERNAL) {
    Serial.println("Internal Error");
  } else if (result == ESP_ERR_ESPNOW_NO_MEM) {
    Serial.println("ESP_ERR_ESPNOW_NO_MEM");
  } else if (result == ESP_ERR_ESPNOW_NOT_FOUND) {
    Serial.println("Peer not found.");
  } else {
    Serial.println("Not sure what happened");
  }
}

// callback when data is sent from Master to Slave
void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  char macStr[18];
  snprintf(macStr, sizeof(macStr), "%02x:%02x:%02x:%02x:%02x:%02x",
           mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
  Serial.print("Last Packet Sent to: "); Serial.println(macStr);
  Serial.print("Last Packet Send Status: "); Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
}


void setup() {
  Serial.begin(115200);

  pinMode(c1,OUTPUT); // 列
  pinMode(c2,OUTPUT);
  pinMode(c3,OUTPUT);
  pinMode(r1,INPUT); // 行
  pinMode(r2,INPUT);
  pinMode(r3,INPUT);
  pinMode(r4,INPUT);
  pinMode(button1,INPUT);
  pinMode(button2,INPUT);

  digitalWrite(c1,HIGH); // 全ての行をHIGHにする
  digitalWrite(c2,HIGH);
  digitalWrite(c3,HIGH);


  WiFi.mode(WIFI_STA);
  Serial.print("STA MAC: "); Serial.println(WiFi.macAddress());
  InitESPNow();
  esp_now_register_send_cb(OnDataSent);
    

  /* full color LED init */
  #if defined(__AVR_ATtiny85__) && (F_CPU == 16000000) // for setup full color LEDs
    clock_prescale_set(clock_div_1);
  #endif
  pixels.begin();
  delay(10);
  pixels.clear(); // Set all pixel colors to 'off'

  pixels.setBrightness(50);
  pixels.setPixelColor(0, pixels.Color(255, 0, 0));
  pixels.setPixelColor(1, pixels.Color(0, 255, 0));
  pixels.setPixelColor(2, pixels.Color(0, 0, 255));
  pixels.setPixelColor(3, pixels.Color(255, 255, 255));
  pixels.show();
  delay(1000);
//  pixels.clear(); // Set all pixel colors to 'off'
//  pixels.show();

  w[0]=0; w[1]=0; // 入力内容を初期化
}


// ↑ ESP-NOW       ---------------------------------------------------------------------
// ↓ Original Code ---------------------------------------------------------------------


void loop() {
//  ScanForSlave();
  int prevKey = key;
  key=0;

  memset(lines,0,sizeof(lines[0])*4);
  //どのボタンが押されているかを認識し、keyに1~12の値として入力
  if(digitalRead(r1)==1) {lines[0]=whichIsPushed(r1);key=lines[0]+3*0;} //あかさ
  if(digitalRead(r2)==1) {lines[1]=whichIsPushed(r2);key=lines[1]+3*1;} //なはま
  if(digitalRead(r3)==1) {lines[2]=whichIsPushed(r3);key=lines[2]+3*2;} //やらわ
  if(digitalRead(r4)==1) {lines[3]=whichIsPushed(r4);key=lines[3]+3*3;} //〇を〇


  memcpy(slave.peer_addr, slaveMAC, 6);
  slave.channel = CHANNEL; // pick a channel
  slave.encrypt = 0; // no encryption
//  slaveFound = 1;

  if (key != prevKey && slave.channel == CHANNEL) { // check if slave channel is defined
    bool isPaired = manageSlave();
    if (isPaired) {
      sendData();
    } else {
      Serial.println("Slave pair failed!");
    }
  }
  delay(10);
  
//  Serial.println(key);
//  sendData();
}

int whichIsPushed(int line){ // 左手側の入力キーを認識
  int ret=0;
  digitalWrite(c1,HIGH);
  digitalWrite(c2,LOW);
  digitalWrite(c3,LOW);
  delay(1);
  if(digitalRead(line)==1)ret=1; // 1列目のキー
  digitalWrite(c1,LOW);
  digitalWrite(c2,HIGH);
  digitalWrite(c3,LOW);
  delay(1);
  if(digitalRead(line)==1)ret=2; // 2列目のキー
  else if(ret!=1) ret=3; // 3列目のキー

  digitalWrite(c1,HIGH); // 初期化を忘れない
  digitalWrite(c2,HIGH);
  digitalWrite(c3,HIGH);
  return ret;
}

    
