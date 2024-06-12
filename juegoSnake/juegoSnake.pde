Snake snake;
//Animal animal;
//int startTime;

public void setup(){
  size(800,800);
  snake = new Snake();
}
public void draw(){
  background(0,255,0);
  snake.display();
}
//public void keyReleased(){
//  if(key=='w' || keyCode==UP){
//    joyPad.setUpPressed(false);
//  }
//  if(key=='s' || keyCode==DOWN){
//    joyPad.setDownPressed(false);
//  }
//    if(key=='a' || keyCode==LEFT){
//    joyPad.setLeftPressed(false);
//  }
//    if(key=='d' || keyCode==RIGHT){
//    joyPad.setRightPressed(false);
//  }
//}
