void drawline(){
  fill(0,0,0,191);
  rect(440,0, 400, 670);
  rect(0,670, 1280, 50);
  fill(125,125,125,191);
  rect(0,510, 1280, 40);
  stroke(255);
  strokeWeight(2);
  line(840,0,840,670);
  line(740,0,740,670);
  line(640,0,640,670);
  line(540,0,540,670);
  line(440,0,440,670);
  line(0,670,1280,670);
  line(0,510,1280,510);
  line(0,550,1280,550);
  fill(0);
  textSize(30);
  text("D", 480, 540);
  text("F", 580, 540);
  text("J", 680, 540);
  text("K", 780, 540);
  fill(255);
  textSize(40);
  text(song_name[int(music)-49], 10, 710);
}
