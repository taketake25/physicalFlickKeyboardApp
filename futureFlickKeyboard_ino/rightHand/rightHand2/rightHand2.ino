#include <WiFi.h>
#include <esp_now.h>
#include <Adafruit_NeoPixel.h>
//#include "BluetoothSerial.h"
#include "BleKeyboard.h" //https://github.com/T-vK/ESP32-BLE-Keyboard

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

//BluetoothSerial SerialBT;
BleKeyboard bleKeyboard;

int lines[4]={0};
char w[2]={0};
char beforew[2]={0}; //長押しによる連続入力を避けるための変数
char beforeInput[2]={0}; //ゴミ変数名（濁点や小文字に対応する）
int key = 0;
bool smallW = false;
bool pushed = false;


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
}


// ↑ ESP-NOW       ---------------------------------------------------------------------
// ↓ Original Code ---------------------------------------------------------------------


void setup() {
  Serial.begin(115200);
//  SerialBT.begin("Future Flick Keyboard v0");
  bleKeyboard.begin();
  delay(1000);

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
  delay(10);
  pixels.clear(); // Set all pixel colors to 'off'

  pixels.setBrightness(50);
  pixels.setPixelColor(0, pixels.Color(255, 0, 0));
  pixels.setPixelColor(1, pixels.Color(0, 255, 0));
  pixels.setPixelColor(2, pixels.Color(0, 0, 255));
  pixels.setPixelColor(3, pixels.Color(255, 255, 255));
  pixels.show();


  w[0]=0; w[1]=0; // 入力内容を初期化  
  key=0;
}


void loop() {
  if(bleKeyboard.isConnected()){ //接続されていた時だけキーを出力する
    printKey(key);
  }
  
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
      w[1]='a'; 
      wordIndex = 0; 
      output = true;
    }else{
      w[1]=0;
    }

    switch(key){
      case 1:w[0]=w[1];w[1]=0;break; //とりあえずESCを入力している
      case 2:w[0]='k';smallW=false;break;
      case 3:w[0]='s';smallW=false;break;
      case 4:w[0]='t';smallW=false;break;
      case 5:w[0]='n';smallW=false;break;
      case 6:w[0]='h';smallW=false;break;
      case 7:w[0]='m';smallW=false;break;
      case 8:w[0]='y';smallW=false;break;
      case 9:w[0]='r';smallW=false;break;
      case 10:w[0]='c';break;
      case 11:w[0]='w';smallW=false;break;
      case 12:w[0]='q';smallW=false;break;
    }
    wordIndex += (key-1)*5; // 左手の入力値を代入する

    if(w[0]=='q'){ // 右下スイッチは記号入力
      switch(w[1]){
        case 'a': w[0]=','; w[1]=0; break; //w[1]はESCAPE
        case 'i': w[0]='.'; w[1]=0; break; //w[1]はESCAPE
        case 'u': w[0]='?'; w[1]=0; break; //w[1]はESCAPE
        case 'e': w[0]='!'; w[1]=0; break; //w[1]はESCAPE
        case 'o': w[0]=0x60; w[1]=0; break; //w[1]はESCAPE
      }
    }
    if(w[0]=='y'){ // ヤ行の左右はカッコを入力
      switch(w[1]){
        case 'i': w[0]='('; w[1]=0; break; //w[1]はESCAPE
        case 'e': w[0]=')'; w[1]=0; break; //w[1]はESCAPE
      }
    }
    if(w[0]=='w'){ // ワ行の入力が変化
      switch(w[1]){
        case 'i': w[1]='o'; break;
        case 'u': w[0]='n'; w[1]='n'; break;
        case 'e': w[0]='-'; w[1]=0; break; //w[1]はESCAPE
        case 'o': w[0]=0x40; w[1]=0; break; //w[1] 0x1bはESCAPE
        default: break;
      }
    }



    if(w[0]=='c'){ //濁点や小文字の変更
//      Serial.println(pushed);
      char sub = 'l';
      if(!pushed){
        
        switch(beforeInput[0]){
          case 'k':w[0]='g'; w[1]=beforeInput[1]; output=true; break; // か行
          case 'g':w[0]='k'; w[1]=beforeInput[1]; output=true; break;
          case 's':w[0]='z'; w[1]=beforeInput[1]; output=true; break; // さ行
          case 'z':w[0]='s'; w[1]=beforeInput[1]; output=true; break;
          case 't': // た行
            if(beforeInput[1]=='u' && smallW==false){ //つ の場合
              w[0]='t';
              w[1]='u';
              smallW = true;
              sub = 'x';
              output=true; 
            }else if(beforeInput[1]=='u'){ //っ の場合
              w[0]='d';
              w[1]='u';
              smallW = false;
              output=true; 
            }else { //「つ」 以外
              w[0]='d';
              w[1]=beforeInput[1];
              output=true; 
             }
            break; //つの時だけ小文字にする
          case 'd':w[0]='t'; w[1]=beforeInput[1]; output=true; break;
          case 'h':w[0]='b'; w[1]=beforeInput[1]; output=true; break; // は行
          case 'b':w[0]='p'; w[1]=beforeInput[1]; output=true; break;
          case 'p':w[0]='h'; w[1]=beforeInput[1]; output=true; break;
          case 'y': // や行
            if(beforeInput[1]!='i' || beforeInput[1]=='e'){ //やゆよ のみ小文字反転
              smallW=!smallW; w[0]=beforeInput[0]; w[1]=beforeInput[1]; 
              output=true; 
            }
            break;
          case 'w':if(beforeInput[1]=='a'){smallW=!smallW; output=true;} break; // わ行
          
          case 'a':smallW=!smallW; w[0]=beforeInput[0]; w[1]=beforeInput[1]; output=true; break; // 小文字かそうでないかを反転させる 1文字目が変化するため，あ行は厄介
          case 'i':smallW=!smallW; w[0]=beforeInput[0]; w[1]=beforeInput[1]; output=true; break; // 小文字かそうでないかを反転させる
          case 'u':smallW=!smallW; w[0]=beforeInput[0]; w[1]=beforeInput[1]; output=true; break; // 小文字かそうでないかを反転させる
          case 'e':smallW=!smallW; w[0]=beforeInput[0]; w[1]=beforeInput[1]; output=true; break; // 小文字かそうでないかを反転させる
          case 'o':smallW=!smallW; w[0]=beforeInput[0]; w[1]=beforeInput[1]; output=true; break; // 小文字かそうでないかを反転させる
  
          default: output=false; Serial.println("cannot change a small word"); break;
        }
  
        if(output){ // 小文字の場合は通常とは別処理と考えて文字出力を行なう．    
          pushed = true;
          bleKeyboard.write(KEY_BACKSPACE); //前回入力した1文字を削除
          delay(5);
          if(smallW==true){ // ヘッダーが存在するときはそれも入力する ex)ltu や lya などの小文字の入力に用いる        
            bleKeyboard.write(sub); delay(5);
          }
          bleKeyboard.write(w[0]); delay(5);
          bleKeyboard.write(w[1]);
          beforeInput[0]=w[0];
        }
        output = false; //先に入力して
      }
    }


    // 出力
    if(output && (beforew[0]!=w[0] || beforew[1]!=w[1])) {
      Serial.print(w[0]); Serial.println(w[1]);
      bleKeyboard.write(w[0]); delay(5);
      if(w[1]!=0)
      bleKeyboard.write(w[1]); 
      beforeInput[0]=w[0]; //過去の出力内容を保存（≠長押し回避）
      beforeInput[1]=w[1];
      pushed = true;
    } // 連続入力を避ける

  }else { // 左手側が入力されていないとき
    if(sqrt((x-2048)*(x-2048) + (y-2048)*(y-2048)) > 1250){ // ジョイスティックがある一定以上傾いていたとき（値の範囲に注意）
      w[0]=0;
      if(pushed==false){
        float direc = (2.0*(atan2(2048-y,2048-x)+0.785398))/pi; // ジョイスティックの角度を求め、45度ごとに値が1ずつ変化するように変換（値の範囲に注意）
        if(direc>=0){ // ジョイスティックの上側
          switch((int)direc){
            case 0:w[0]='<'; wordIndex = 1; break; // ←
            case 1:w[0]='!'; wordIndex = 4; break; // ↓
            default:w[0]='>'; wordIndex = 3; break; // →
          }
        }else{ // ジョイスティックの下側（-1以上0未満の値がintにした際に0になっちゃうので）
          switch((int)direc){
            case -1:w[0]='>'; wordIndex = 3; break; // →
            default:w[0]='I'; wordIndex = 2; break; // ↑
          }
        }
        w[1]=0;
        output = true;
      }
    }else {
      pushed=false;
      if(!digitalRead(enter)) {w[0]='\n'; w[1]=0; wordIndex=60; output=true;} // Enter長押し時に、改行されてしまう問題があるため、w[1]=0を入れる
      else if(!digitalRead(back)) {w[0]='\b'; w[1]=0; wordIndex=59; output=true;} // 画面をクリア
      else if(!digitalRead(conv)) {w[0]=' '; w[1]=0; wordIndex=61; output=true;} // スペースを空ける
      else {w[0]=0;}
    }

    if(output && (beforew[0]!=w[0] || beforew[1]!=w[1])) { // 連続入力を避ける
      Serial.println(w[0]);

      switch(w[0]){
        case '\n':bleKeyboard.write(KEY_RETURN); break;
        case ' ':bleKeyboard.write(KEY_BACKSPACE); delay(75); w[0]=0; break; //\bだけ連続入力可能にする
        case '\b':bleKeyboard.write(0x20);break;
        case '<':bleKeyboard.write(KEY_LEFT_ARROW);break;
        case 'I':bleKeyboard.write(KEY_UP_ARROW);break;
        case '>':bleKeyboard.write(KEY_RIGHT_ARROW);break;
        case '!':bleKeyboard.write(KEY_DOWN_ARROW);break;
      }
    }
  }
  
  beforew[0]=w[0]; // 前回の入力を記憶（長押しで同じ文字が入力されいないようにする）
  beforew[1]=w[1];

}
