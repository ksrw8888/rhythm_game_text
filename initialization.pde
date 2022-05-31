void initialization(){
  BGimg=loadImage("Cover.png");                  //set Cover
  Cover1=loadImage("musiccover1.jpg");
  Cover2=loadImage("musiccover2.jpg");
  keybroad=loadImage("beat.png");
  musicfile = new Minim(this);
  offerY = (float)510/30/2 ;             //1s 30FPS  2s到點
  Sec_to_FPS = (float)1/30;                        //1FPS to Sec
  regtime = -2;                          //star -2S
  index = 0;
}
