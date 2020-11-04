#include <WiFi.h>
#include <esp_now.h>
#include <Adafruit_NeoPixel.h>
#include "BluetoothSerial.h"

#define LEDs 13
#define button1 32
#define button2 33
#define spk 25
#define enter 16
#define conv 17
#define back 4
#define jx 34
#define jy 35
#define pi 3.141592
#define CHANNEL 0

/* full color LED definition */
#ifdef __AVR__
#include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif
#define NUMPIXELS 4 // Popular NeoPixel ring size
Adafruit_NeoPixel pixels(NUMPIXELS, LEDs, NEO_GRB + NEO_KHZ800);

BluetoothSerial SerialBT;

int lines[4]={0};
char w[2]={0};
char beforew[2]={0};
int key = 0;


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

// config AP SSID
void configDeviceAP() {
  const char *SSID = "Slave_rightHand";
  bool result = WiFi.softAP(SSID, "ffkb_rightHand", CHANNEL, 0);
  if (!result) {
    Serial.println("AP Config failed.");
  } else {
    Serial.println("AP Config Success. Broadcasting with AP: " + String(SSID));
  }
}

// callback when data is recv from Master
void OnDataRecv(const uint8_t *mac_addr, const uint8_t *data, int data_len) {
  char macStr[18];
  snprintf(macStr, sizeof(macStr), "%02x:%02x:%02x:%02x:%02x:%02x",
           mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
  Serial.print("Last Packet Recv from: "); Serial.println(macStr);
  Serial.print("Last Packet Recv Data: "); Serial.println(*data);
  Serial.println("");

  key = *data;
//  Serial.print("key:");

}


// ↑ ESP-NOW       ---------------------------------------------------------------------
// ↓ Original Code ---------------------------------------------------------------------


void setup() {
  Serial.begin(115200);
  SerialBT.begin("Future Flick Keyboard v0");

  pinMode(jx,INPUT); //ジョイスティック
  pinMode(jy,INPUT);
  pinMode(button1,INPUT);
  pinMode(button2,INPUT);
  pinMode(back,INPUT); // 消す
  pinMode(enter,INPUT); // 改行 or あ列
  pinMode(conv,INPUT); //スペース


  WiFi.mode(WIFI_AP);
  configDeviceAP();  // configure device AP mode
  Serial.print("AP MAC: "); Serial.println(WiFi.softAPmacAddress());  // This is the mac address of the Slave in AP Mode
  InitESPNow();  // Init ESPNow with a fallback logic
  esp_now_register_recv_cb(OnDataRecv);  // Once ESPNow is successfully Init, we will register for recv CB to get recv packer info.


  /* full color LED init */
  #if defined(__AVR_ATtiny85__) && (F_CPU == 16000000) // for setup full color LEDs
    clock_prescale_set(clock_div_1);
  #endif
  pixels.begin();
  pixels.clear(); // Set all pixel colors to 'off'
  pixels.setPixelColor(0, pixels.Color(255, 0, 0));
  pixels.setPixelColor(1, pixels.Color(0, 255, 0));
  pixels.setPixelColor(2, pixels.Color(0, 0, 255));
  pixels.setPixelColor(3, pixels.Color(255, 255, 255));
  pixels.show();
  delay(1000);
//  pixels.clear(); // Set all pixel colors to 'off'
//  pixels.show();


  w[0]=0; w[1]=0; // 入力内容を初期化  
  key=0;
}


void loop() {
  
  memset(lines,0,sizeof(lines[0])*4);
  //どのボタンが押されているかを認識し、keyに1~12の値として入力

//  Serial.print(digitalRead(enter));  Serial.print("  ");
//  Serial.print(analogRead(jx));  Serial.print("  ");
//  Serial.print(analogRead(jy));  Serial.println("  ");
  printKey(key);

  delay(50); 
}


void printKey(int key){ // 入力キーをinput
  int x = analogRead(jx); // ジョイスティックの値を取得（0~4095）
  int y = analogRead(jy);
  bool output = false;

  int wordIndex = 0;

  if(key!=0){ // 左手側が入力されているとき
    if(sqrt((x-2048)*(x-2048) + (y-2048)*(y-2048)) > 1250){ // ジョイスティックがある一定以上傾いていたとき（値の範囲に注意）
      float direc = (2.0*(atan2(2048-y,2048-x)+0.785398))/pi; // ジョイスティックの角度を求め、45度ごとに値が1ずつ変化するように変換（値の範囲に注意）

//      Serial.print(atan2(2048-y,2048-x)+0.785398);
      if(direc>=0){ // ジョイスティックの上側
        switch((int)direc){
          case 0:  Serial.print("<-"); w[1]='i'; wordIndex = 1; break; // ←
          case 1:  Serial.print("!"); w[1]='o'; wordIndex = 4; break; // ↓
          default:  Serial.print("->"); w[1]='e'; wordIndex = 3; break; // →
        }
        output = true;
      }else{ // ジョイスティックの下側（-1以上0未満の値がintにした際に0になっちゃうので）
        switch((int)direc){
          case -1: Serial.print("->"); w[1]='e'; wordIndex = 3; break; // →
          default: Serial.print("i"); w[1]='u'; wordIndex = 2; break; // ↑
        }
        output = true;
      }

    }else if(!digitalRead(enter)){ // フリックしない文字（あ行）はEnterキーで入力
      Serial.print("*");
      w[1]='a'; 
      wordIndex = 0; 
      output = true;
    }else{
      w[1]=0;
    }

    switch(key){
      case 1:w[0]=w[1];w[1]=0;break; //とりあえずESCを入力している
      case 2:w[0]='k';break;
      case 3:w[0]='s';break;
      case 4:w[0]='t';break;
      case 5:w[0]='n';break;
      case 6:w[0]='h';break;
      case 7:w[0]='m';break;
      case 8:w[0]='y';break;
      case 9:w[0]='r';break;
      case 10:w[0]=' ';break;
      case 11:w[0]='w';break;
      case 12:w[0]=' ';break;
    }
    wordIndex += (key-1)*5; // 左手の入力値を代入する

    if(w[0]=='w'){ // ワ行のみ入力が変化
      if(w[1]=='i') w[1]='o';
      if(w[1]=='u') {w[0]=w[1]='n';}
      if(w[1]=='e') {w[0]='-'; w[1]=0x1b;}
    }

    // 出力
    if(output && (beforew[0]!=w[0] || beforew[1]!=w[1])) {SerialBT.print(wordIndex); Serial.println(wordIndex);} // 連続入力を避ける
  }else { // 左手側が入力されていないとき
    if(!digitalRead(enter)) {w[0]='\n'; w[1]='a';wordIndex=60; output=true;} // Enter長押し時に、改行されてしまう問題があるため、w[1]='a'を入れる糞コード
    else if(!digitalRead(back)) {/*lcd.fillScreen(0x000000);*/  /*lcd.setCursor(0, 0);*/} // 画面をクリア
    else if(!digitalRead(conv)) {w[0]=' '; w[1]='a';wordIndex=61; output=true;} // スペースを空ける
    else {w[0]=0;}
    if(output && (beforew[0]!=w[0] && beforew[1]!=w[1])) {SerialBT.print(wordIndex); Serial.print(wordIndex);} // 連続入力を避ける
//    if(beforew[0]!=w[0] && beforew[1]!=w[1]) {lcd.printf("%c",w[0]); SerialBT.print(w[0]); /*SerialBT.print("あ");*/} // 連続入力を避ける
  }

  beforew[0]=w[0]; // 前回の入力を記憶（長押しで同じ文字が入力されいないようにする）
  beforew[1]=w[1];

}
