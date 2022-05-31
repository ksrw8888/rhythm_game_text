import ddf.minim.*;
Minim musicfile;
AudioPlayer song;

PFont myFont;
PImage BGimg, keybroad, song_picture, Cover1, Cover2;
float X[]={440, 540, 640, 740}, offerY, Sec_to_FPS, regtime;                        //鍵位
float[] time;

String[] lines, song_time;                            //讀歌譜、歌名
String[]  song_name = {"Lisa - 紅蓮華", "Coda-Fighting Gold"};
char[] line = new char[4];                             //一次讀4個字用  
char  music;
rhythm[] sheet_Music = new rhythm[400];                //生成節奏用
int lenlin=0, lenX=0, perfect=0, miss=0, combo=0, big_combo=0, index;         //各種判斷
boolean table1 = false, table2 = false, music_on = false;                                 //轉換頁面的判斷


void setup() {
  size(1280, 720);
  frameRate(30);
  myFont = createFont("標楷體", 100);
  textFont(myFont);
  initialization();
}

void draw() {
  if (table1) {                          //封面
    play_interface();
  } else {
    Cover();
  }
}


void keyPressed() {
  key();
}

void mouseReleased() {
  if (!table1 &&((mouseX >=100)&&(mouseX <=350))&&((mouseY>=100)&&(mouseY<=350))) {
    table1 = true;
    music = '1';
  } else if (!table1 &&((mouseX >=930)&&(mouseX <=1180))&&((mouseY>=370)&&(mouseY<=620))) {
    table1 = true;
    music = '2';
  } else if (table2)
    Return();
}

void stop() {
  musicfile.stop();
  song.close();
}
