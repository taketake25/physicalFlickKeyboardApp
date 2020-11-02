package com.example.btserialtest;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;


public class MainActivity extends AppCompatActivity{

    // ListView　用アダプタ
    private SimpleAdapter mAdapter = null;
    // ListView に設定するデータ
    private ArrayList<Map<String, String>> mList = null;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Layoutにて設定したビューを表示
        setContentView(R.layout.activity_main);

        Button sendButton = findViewById(R.id.addMemo);
        sendButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplication(), editor2.class);
                intent.putExtra("NAME", "");
                intent.putExtra("TITLE", "");
                intent.putExtra("CONTENT", "");
                startActivity(intent);
            }
        });


        // ListView 用アダプタのリストを生成
        mList = new ArrayList<Map<String, String>>();

        // ListView 用アダプタを生成
        mAdapter = new SimpleAdapter(
                this,
                mList,
                android.R.layout.simple_list_item_2,
                new String [] {"title", "dummy"},
                new int[] {android.R.id.text1, android.R.id.text2}
        );

        // ListView にアダプターをセット
        ListView list = (ListView)findViewById(R.id.memoLists);
        list.setAdapter(mAdapter);

        // ListView のアイテム選択イベント
        list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(
                    AdapterView<?> parent, View view, int pos, long id) {
                // 編集画面に渡すデータをセットし、表示
                Intent intent = new Intent(MainActivity.this, editor2.class);
                Log.i("putExtra", "mList:" + mList + ", pos:" + pos);
                intent.putExtra("NAME", mList.get(pos).get("filename"));
                intent.putExtra("TITLE", mList.get(pos).get("title"));
                intent.putExtra("CONTENT", mList.get(pos).get("content"));
                startActivity(intent);
            }
        });

        // ListView をコンテキストメニューに登録
        registerForContextMenu(list);

        final String savePath = this.getFilesDir().getPath().toString();
        list.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent,
                                           View view, final int position, long id) {
                ListView list = (ListView) parent;
                final HashMap<String, String> map = (HashMap<String, String>) list.getItemAtPosition(position);
                final String selectedItem = (String) map.get("title");
                Log.i("info", "instance type : " + map.get("title").getClass());
                Log.i("info", "Long click : " + selectedItem);


                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setMessage("削除しますか？")
                    .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            mList.remove(map);
                            deleteFile(selectedItem);
                            mAdapter.notifyDataSetChanged();
                            Toast.makeText(MainActivity.this, "削除しました", Toast.LENGTH_SHORT).show();
                        }
                    })
                    .setNegativeButton("キャンセル", null)
                    .setCancelable(true);
                // show dialog
                builder.show();

                mAdapter.notifyDataSetChanged();
                return true;
            }
        });

    }

    @Override
    protected void onResume() {
        super.onResume();

        // アプリの保存フォルダ内のファイル一覧を取得
        String savePath = this.getFilesDir().getPath().toString();
        File[] files = new File(savePath).listFiles();
        // ファイル名の降順でソート
        Arrays.sort (files, Collections.reverseOrder());
        // テキストファイル(*.txt)を取得し、ListView用アダプタのリストにセット
        for (int i=0; i<files.length; i++) {
            String fileName = files[i].getName();
            if (files[i].isFile() && fileName.endsWith(".txt")) {
                String title = null;
                String content = null;
                //　ファイルを読み込み
                try {
                    // ファイルオープン
                    InputStream in = this.openFileInput(fileName);
                    BufferedReader reader = new BufferedReader(new InputStreamReader(in, "UTF-8"));
                    char[] buf = new char[(int)files[i].length()];
                    // タイトル（1行目）を読み込み
                    title = reader.readLine();
                    // 内容（2行目以降）を読み込み
                    int num = reader.read(buf);
                    content = new String(buf, 0, num);
                    // ファイルクローズ
                    reader.close();
                    in.close();
                } catch (Exception e) {
                    Toast.makeText(this, "File read error!", Toast.LENGTH_LONG).show();
                }

                // TODO : ListView用のアダプタにデータをセット
                Map<String, String> item = new HashMap<String, String>();
                item.put("filename", fileName);
                item.put("title", title);
                item.put("content", content);
                item.put("dummy", "");
                mList.add(item);
            }
        }
    }

    public boolean deleteFile(String deleteTitle){
        // アプリの保存フォルダ内のファイル一覧を取得
        String savePath = this.getFilesDir().getPath().toString();
        boolean deleteFlag = false;
        int i=0;
        File[] files = new File(savePath).listFiles();
        // ファイル名の降順でソート
        Arrays.sort (files, Collections.reverseOrder());
        // テキストファイル(*.txt)を取得し、ListView用アダプタのリストにセット
        for (i=0; i<files.length; i++) {
            String fileName = files[i].getName();
            if (files[i].isFile() && fileName.endsWith(".txt")) {
                String title = null;
                String content = null;
                //　ファイルを読み込み
                try {
                    // ファイルオープン
                    InputStream in = this.openFileInput(fileName);
                    BufferedReader reader = new BufferedReader(new InputStreamReader(in, "UTF-8"));
                    char[] buf = new char[(int)files[i].length()];
                    // タイトル（1行目）を読み込み
                    title = reader.readLine();

                    if(title.equals(deleteTitle)){
                        deleteFlag = true;
                        break;
                    }

                    reader.close();
                    in.close();
                } catch (Exception e) {
                    Toast.makeText(this, "File read error!", Toast.LENGTH_LONG).show();
                }
            }
        }
        if(deleteFlag){
            files[i].delete();
        }

        return true;
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
            case R.id.action_adds:
                Intent intent = new Intent(getApplication(), editor2.class);
                intent.putExtra("NAME","");
                intent.putExtra("TITLE", "");
                intent.putExtra("CONTENT", "");
                startActivity(intent);
                break;
        }
        return true;
    }

};