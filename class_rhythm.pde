class rhythm{
  float keyboardX,keyboardY;
  boolean touch = false;
  
  rhythm(){};
  
  rhythm(float X){
    keyboardX = X;
    keyboardY = -2*offerY;
  }
  void addY(){
    keyboardY+=offerY;
  }
  float X(){
   return  keyboardX;
  }
  float Y(){
   return  keyboardY;
  }
  
}
