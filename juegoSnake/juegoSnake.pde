Snake snake;
JoyPad joyPad;
//Animal animal;
//int startTime;

public void setup(){
  size(800,800);
  snake = new Snake();
  joyPad=new JoyPad();
}
public void draw(){
  background(0,255,0);
  snake.display();
  if (joyPad.isUpPressed()){
      snake.mover(0);
  }
   if (joyPad.isDownPressed()){
      snake.mover(1);
  }
   if (joyPad.isLeftPressed()){
      snake.mover(3);
  }
   if (joyPad.isRightPressed()){
      snake.mover(4);
  }
}
public void keyPressed(){
  if(key=='w' || keyCode==UP){
    joyPad.setUpPressed(true);
  }
  if(key=='s' || keyCode==DOWN){
    joyPad.setDownPressed(true);
  }
    if(key=='a' || keyCode==LEFT){
    joyPad.setLeftPressed(true);
  }
    if(key=='d' || keyCode==RIGHT){
    joyPad.setRightPressed(true);
  }
}
public void keyReleased(){
  if(key=='w' || keyCode==UP){
    joyPad.setUpPressed(false);
  }
  if(key=='s' || keyCode==DOWN){
    joyPad.setDownPressed(false);
  }
    if(key=='a' || keyCode==LEFT){
    joyPad.setLeftPressed(false);
  }
    if(key=='d' || keyCode==RIGHT){
    joyPad.setRightPressed(false);
  }
}
