package com.example.btserialtest;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;


public class editor2 extends AppCompatActivity implements Runnable, View.OnClickListener, TextToSpeech.OnInitListener{
    private static final String TAG = "Future Flicking KeyBoard";    /* tag */

    private String currentText = "";
    private String previousText = "";
    private String mFileName = "";
    private BluetoothSocket mSocket;    /* Soket */
    private Thread mThread;    /* Thread */
    private boolean isRunning;    /* Threadの状態を表す */

    private ImageButton copyButton;
    private ImageButton saveButton;
    private ImageButton volumeButton;
    private TextView mStatusTextView;    /*** ステータス.*/
    private TextView mInputTextView;    /*** Bluetoothから受信した値.*/
    private TextView mTitleTextView;    /*** Bluetoothから受信した値.*/
    private static final int VIEW_STATUS = 0;    /*** Action(ステータス表示).*/
    private static final int VIEW_INPUT = 1;    /*** Action(取得文字列).*/
    private boolean isMute = false;
    private AudioManager am;
    private TextToSpeech tts;
    private final String hira = "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゐゆゑよらりるれろ小濁数半矢わをんー　！（、）。\n ";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.editor2);

        // TextViewの設定(Layoutにて設定したものを関連付け)
        mInputTextView = (TextView) findViewById(R.id.inputText);
        mTitleTextView = (TextView) findViewById(R.id.titleText);
        mStatusTextView = (TextView) findViewById(R.id.statusValue);

        Log.i("tag", "start editor");

        Intent intent = getIntent();
        String name = intent.getStringExtra("NAME");
        if (name != null) {
            mFileName = name;
            mTitleTextView.setText(intent.getStringExtra("TITLE"));
            mInputTextView.setText(intent.getStringExtra("CONTENT"));
        }


//        connectButton = (Button) findViewById(R.id.connectButton);        // Buttonの設定(Layoutにて設定したものを関連付け)
        copyButton = (ImageButton) findViewById(R.id.copyButton);
        saveButton = (ImageButton) findViewById(R.id.saveButton);
        volumeButton = (ImageButton) findViewById(R.id.volumeButton);
//        connectButton.setOnClickListener(this);        // ボタンのイベント設定
        copyButton.setOnClickListener(this);
        saveButton.setOnClickListener(this);
        volumeButton.setOnClickListener(this);


        am = (AudioManager)getSystemService(Context.AUDIO_SERVICE);
        tts = new TextToSpeech(this, (TextToSpeech.OnInitListener) this);


        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);

        mThread = new Thread(this);
        mThread.start();
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        Log.i("tag", Integer.toString(item.getItemId()));
        Log.i("home", Integer.toString(R.id.home));
        switch (item.getItemId()) {
            case android.R.id.home: // 左上の戻るボタンでMemo一覧へ
                Intent intent = new Intent(getApplication(), MainActivity.class);
                startActivity(intent);
                // ボタンをタップした際の処理を記述
                break;
            case R.id.action_adds:
                // ボタンをタップした際の処理を記述
                break;
        }
        return true;
    }


    // 別のアクティビティが起動した場合の処理
    @Override
    protected void onPause() {
        super.onPause();
        fileWrite();
    }

    public void fileWrite(){
        isRunning = false;

        try {
            mSocket.close();
        } catch (Exception e) {
        }

        // タイトル、内容を取得
        String title = mTitleTextView.getText().toString();
        String content = mInputTextView.getText().toString();

        // タイトル、内容が空白の場合、保存しない
        if (title.isEmpty() || content.isEmpty()) {
            Toast.makeText(this, "タイトルか内容がないためメモを破棄しました", Toast.LENGTH_SHORT).show();
            return;
        }

        // ファイル名を生成  ファイル名 ： yyyyMMdd_HHmmssSSS.txt
        // （既に保存されているファイルは、そのままのファイル名とする）
        if (mFileName.isEmpty()) {
            Date date = new Date(System.currentTimeMillis());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS", Locale.JAPAN);
            mFileName = sdf.format(date) + ".txt";
        }

        // 保存
        OutputStream out = null;
        PrintWriter writer = null;
        try{
            out = this.openFileOutput(mFileName, Context.MODE_PRIVATE);
            writer = new PrintWriter(new OutputStreamWriter(out,"UTF-8"));
            // タイトル書き込み
            writer.println(title);
            // 内容書き込み
            writer.print(content);
            writer.close();
            out.close();
            Toast.makeText(this, "メモを保存しました。", Toast.LENGTH_LONG).show();
        }catch(Exception e){
            Toast.makeText(this, "File save error!", Toast.LENGTH_LONG).show();
        }
    }


    // スレッド処理(connectボタン押下後に実行)
    @Override
    public void run() {
        while(true){
            Message valueMsg = new Message();
            valueMsg.what = VIEW_STATUS;
            valueMsg.obj = "connected.";
            mHandler.sendMessage(valueMsg);

            currentText = mInputTextView.getText().toString();
            Log.i(TAG, "value=" + currentText);
            // 文字列が追加された場合音声出力する
            if (currentText.length() > previousText.length()) {
                String addition = currentText.substring(previousText.length(), currentText.length());
                Log.i(TAG, "addition=" + addition);
                speechText(addition);

    //            valueMsg = new Message();
    //            valueMsg.what = VIEW_INPUT;
    //            valueMsg.obj = currentText;
    //            mHandler.sendMessage(valueMsg);
            }
            previousText = currentText;

            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    // ボタン押下時の処理
    @Override
    public void onClick(View v) {
        if(v.equals(saveButton)) { // 保存ボタン
            fileWrite();
        }else if(v.equals(volumeButton)) { // 保存ボタン
            if ( isMute ) {
                isMute = false;
                am.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_UNMUTE, 0);
                Toast.makeText(this, "ミュート解除", Toast.LENGTH_SHORT).show();
            }else {
                isMute = true;
                am.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_MUTE, 0);
                Toast.makeText(this, "ミュート", Toast.LENGTH_SHORT).show();
            }
        }else if(v.equals(copyButton)) { // clipBoardに入力内容をコピー
            ClipData.Item item =new ClipData.Item(mInputTextView.getText());
            //MIMETYPEの作成
            String[] mimeType = new String[1];
            mimeType[0] = ClipDescription.MIMETYPE_TEXT_PLAIN;
            //クリップボードに格納するClipDataオブジェクトの作成
            ClipData cd = new ClipData(new ClipDescription("text_data", mimeType), item);

            ClipboardManager cm = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
            cm.setPrimaryClip(cd);

            Toast.makeText(this, "文章をコピーしました", Toast.LENGTH_SHORT).show();

        }
    }

    /**
     * 描画処理はHandlerでおこなう
     */
    Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            int action = msg.what;
            String msgStr = (String) msg.obj;
            if (action == VIEW_INPUT) {
                mInputTextView.setText(msgStr);
            } else if (action == VIEW_STATUS) {
                mStatusTextView.setText(msgStr);
            }
        }
    };

    @Override
    public void onInit(int status) {
        if (TextToSpeech.SUCCESS == status) {
            //言語選択
            Locale locale = Locale.JAPAN;
            if (tts.isLanguageAvailable(locale) >= TextToSpeech.LANG_AVAILABLE) {
                tts.setLanguage(locale);
            } else {
                Log.d("Error", "Locale");
            }
        } else {
            Log.d("Error", "Init");
        }
    }

    private void speechText(String readMsg) {
//        if (0 < readMsg.length()) {
//            if (tts.isSpeaking()) {
//                // 読み上げ中なら停止
//                tts.stop();
//            }
//            //読み上げ開始
//        }
        CharSequence cs = readMsg;
        tts.speak(cs, TextToSpeech.QUEUE_ADD, null, "id:1");
    }

};