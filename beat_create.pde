void beat_create() {
  if (lenlin < lines.length) {
    for (int i=0; i<4; i++) {
      line[i] = lines[lenlin].charAt(i);
      if (line[i] == '1') {
        sheet_Music[lenX] = new rhythm(X[i]); 
        lenX++;
      }
    }
    lenlin++;
  }
}

void beat_move(){
  for (int i=0; i<lenX; i++) {
    if (sheet_Music[i].touch == false) {
      image(keybroad, sheet_Music[i].X(), sheet_Music[i].Y(), 100, 25) ;
      sheet_Music[i].addY();
      if ((sheet_Music[i].Y()-552 <= 3*offerY) && (sheet_Music[i].Y()-552 >= 0))
      {
        textSize(25);
        text("miss",  sheet_Music[i].X(), 600);
        miss++;
        combo = 0;
      }
      else if (sheet_Music[i].Y()  >= 640){
        sheet_Music[i].keyboardY = 1000;
        sheet_Music[i].touch = true;
      }
    }
  }
  textSize(50);
  text("Combo : "+combo,  950, 300);
  if(big_combo < combo)
    big_combo = combo;
    

}
