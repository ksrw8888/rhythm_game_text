void play_interface() {
  if (music_on == false) {
    song_picture=loadImage("game_picture"+music+".jpg");
    song = musicfile.loadFile("music"+music+".mp3");
    song_time = loadStrings("song_time"+music+".txt");
    lines = loadStrings("text"+music+".txt");
    time = new float[song_time.length];
    for (int i=0; i<song_time.length; i++)
    {
      time[i] = float(song_time[i]);
    }
    music_on = true;
  } else if (regtime < (float)song.length()/1000-2) {
    if (regtime >=0 && index < time.length) {
      if ((regtime >= time[index]-2)) {
        thread("beat_create");
        index++;
      }
    } else if ((-regtime <= Sec_to_FPS) && (-regtime >= 0)) {
      song.play();
      regtime =(float)song.position()/1000;
      if (regtime >= time[index]-2) {
        thread("beat_create");
        index++;
      }
    } else if (regtime < 0)
    {
      if (regtime >= time[index]-2) {
        beat_create();
        index++;
      }
    }
    background(song_picture);
    drawline(); 
    beat_move();
    regtime+=Sec_to_FPS;
  } else{
    result();
  }
}
