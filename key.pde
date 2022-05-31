void key() {
  textSize(25);
  if ((key == 'D')||(key == 'd'))
  {
    //beat.play();

    for (int i=0; i<lenX; i++)
      if (sheet_Music[i].X() == 440)
        if ( (sheet_Music[i].Y()>=510)&&(sheet_Music[i].Y()<=550))
        {
          sheet_Music[i].keyboardY = 1000;
          sheet_Music[i].touch = true;
          text("perfect!",  440, 600);
          perfect+=1;
          combo++;
        }
    //beat.rewind();
  }

  if ((key == 'F')||(key == 'f'))
  {
    //beat.play();

    for (int i=0; i<lenX; i++)
      if (sheet_Music[i].X() == 540)
        if ( (sheet_Music[i].Y()>=510)&&(sheet_Music[i].Y()<=550))
        {
          sheet_Music[i].keyboardY = 1000;
          sheet_Music[i].touch = true;
          text("perfect!",  540, 600);
          perfect+=1;
          combo++;
        }
    //beat.rewind();
  }

  if ((key == 'J')||(key == 'j'))
  {
    //beat.play();

    for (int i=0; i<lenX; i++)
      if (sheet_Music[i].X() == 640)
        if ( (sheet_Music[i].Y()>=510)&&(sheet_Music[i].Y()<=550))
        {
          sheet_Music[i].keyboardY = 1000;
          sheet_Music[i].touch = true;
          text("perfect!",  640, 600);
          perfect+=1;
          combo++;
        }
    //beat.rewind();
  }

  if ((key == 'K')||(key == 'k'))
  {
    //beat.play();

    for (int i=0; i<lenX; i++)
      if (sheet_Music[i].X() == 740)
        if ( (sheet_Music[i].Y()>=510)&&(sheet_Music[i].Y()<=550))
        {
          sheet_Music[i].keyboardY = 1000;
          sheet_Music[i].touch = true;
          text("perfect!",  740, 600);
          perfect+=1;
          combo++;
        }
    //beat.rewind();
  }
  
  if(keyCode == DOWN){
    ;
  }
}
