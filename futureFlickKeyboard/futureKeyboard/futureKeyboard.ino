#define LGFX_M5STACK          // M5Stack

#include <M5Stack.h>
#include <LovyanGFX.hpp>
#include "BluetoothSerial.h"

#define r1 19
#define r2 17
#define r3 18
#define r4 16
#define c1 2
#define c2 5
#define c3 25
#define enter 26
#define conv 21
#define back 22
#define jx 35
#define jy 36
#define pi 3.141592

BluetoothSerial SerialBT;

static LGFX lcd;                 // LGFXのインスタンスを作成。
int lines[4]={0};
char w[2]={0};
char beforew[2]={0};
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

void setup() {
  lcd.init();
  M5.begin();
  M5.Speaker.begin(); // これが無いとmuteしても無意味です。
  M5.Speaker.mute();
  Serial.begin(115200);
  SerialBT.begin("Future Flick Keyboard");

  pinMode(c1,OUTPUT); // 列
  pinMode(c2,OUTPUT);
  pinMode(c3,OUTPUT);
  pinMode(jx,INPUT); //ジョイスティック
  pinMode(jy,INPUT);
  pinMode(r1,INPUT); // 行
  pinMode(r2,INPUT);
  pinMode(r3,INPUT);
  pinMode(r4,INPUT);
  pinMode(back,INPUT); // 消す
  pinMode(enter,INPUT); // 改行 or あ列
  pinMode(conv,INPUT); //スペース

  digitalWrite(c1,HIGH); // 全ての行をHIGHにする
  digitalWrite(c2,HIGH);
  digitalWrite(c3,HIGH);


  lcd.setTextWrap(true,true);
  lcd.setTextDatum(bottom_right);
  lcd.setTextSize(3);
  lcd.setTextColor(0xFFFFFFU, 0x000000U);

  w[0]=0; w[1]=0; // 入力内容を初期化
}


void loop() {
  int key=0;
  
  memset(lines,0,sizeof(lines[0])*4);
  //どのボタンが押されているかを認識し、keyに1~12の値として入力
  if(digitalRead(r1)==1) {lines[0]=whichIsPushed(r1);key=lines[0]+3*0;} //あかさ
  if(digitalRead(r2)==1) {lines[1]=whichIsPushed(r2);key=lines[1]+3*1;} //なはま
  if(digitalRead(r3)==1) {lines[2]=whichIsPushed(r3);key=lines[2]+3*2;} //やらわ
  if(digitalRead(r4)==1) {lines[3]=whichIsPushed(r4);key=lines[3]+3*3;} //〇を〇

//  printInputButton();
  printKey(key);

  delay(50); 
}

void printInputButton(){ // 左手側の入力ボタンをGUIで表示
  for(int y=3;y>=0;y--){
    for(int x=0;x<3;x++){
      lcd.fillRect(82+55*x, 15+55*y, 45, 45, 0x222222);  // 矩形の外周
      if(lines[y]==x+1){
        lcd.fillRect(82+55*x, 15+55*y, 45, 45, 0x5555FF);  // 矩形の塗り
      }
    }
  }
}

void printKey(int key){ // 入力キーをinput
  int x = analogRead(jx); // ジョイスティックの値を取得（0~4095）
  int y = analogRead(jy);
  bool output = false;

  int wordIndex = 0;

  if(key!=0){ // 左手側が入力されているとき
    if(sqrt((x-2048)*(x-2048) + (y-2048)*(y-2048)) > 1024){ // ジョイスティックがある一定以上傾いていたとき（値の範囲に注意）
      float direc = (2.0*(atan2(2048-y,2048-x)+0.785398))/pi; // ジョイスティックの角度を求め、45度ごとに値が1ずつ変化するように変換（値の範囲に注意）
      
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

    }else if(digitalRead(enter)==1){ // フリックしない文字（あ行）はEnterキーで入力
      w[1]='a'; 
      wordIndex = 0; 
      output = true;
    }else w[1]=0;

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
    wordIndex += (key-1)*5; 
      
    if(w[0]=='w'){ // ワ行のみ入力が変化
      if(w[1]=='i') w[1]='o';
      if(w[1]=='u') {w[0]=w[1]='n';}
      if(w[1]=='e') {w[0]='-'; w[1]=0x1b;}
    }

    // 出力
//    lcd.printf("%c%c",beforew[0],beforew[1]);
    if(output && (beforew[0]!=w[0] || beforew[1]!=w[1])) {lcd.printf("%c%c",w[0],w[1]); SerialBT.print(wordIndex);Serial.println(wordIndex); } // 連続入力を避ける
//    if(output && (beforew[0]!=w[0] || beforew[1]!=w[1])) {lcd.printf("%c%c",w[0],w[1]); SerialBT.print(w[0]); SerialBT.print(w[1]);} // 連続入力を避ける

  }else { // 左手側が入力されていないとき
    if(digitalRead(enter)) {w[0]='\n'; w[1]='a';wordIndex=60;} // Enter長押し時に、改行されてしまう問題があるため、w[1]='a'を入れる糞コード
    if(digitalRead(back)) {lcd.fillScreen(0x000000);  lcd.setCursor(0, 0);} // 画面をクリア
    if(digitalRead(conv)) {w[0]=' '; w[1]='a';wordIndex=61;} // スペースを空ける
//    if(beforew[0]!=w[0] && beforew[1]!=w[1]) {lcd.printf("%c",w[0]); SerialBT.print(w[0]); /*SerialBT.print("あ");*/} // 連続入力を避ける
    if(beforew[0]!=w[0] && beforew[1]!=w[1]) {lcd.printf("%c",w[0]); SerialBT.print(wordIndex);Serial.print(wordIndex);} // 連続入力を避ける
  }

  beforew[0]=w[0]; // 前回の入力を記憶（長押しで同じ文字が入力されいないようにする）
  beforew[1]=w[1];

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

    
