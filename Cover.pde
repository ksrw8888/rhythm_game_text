void Cover(){
  background(BGimg);
  image(Cover1, 100, 100, 250, 250) ;
  image(Cover2, 930, 370, 250, 250) ;
}

void result(){
  fill(0,0,0,100);
  noStroke();
  rect(100 ,50, 1080, 620);
  fill(255);
  textSize(80);
  text("Perfect   : "+ perfect, 320, 195);
  text("Max Combo : "+ big_combo, 320, 310);
  text("Miss      : "+ miss, 320, 465);
  text("Total     : "+ lenX, 320, 620);
  table2 = true;
}
