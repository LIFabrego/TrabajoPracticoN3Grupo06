Snake snake;
Animal animal;
//int startTime;

public void setup(){
  size(800,800);
  snake = new Snake();
  animal = new Animal();
  animal.setPosicion(new PVector(random(width),random(height)));
  //animal.nuevoAnimal();

}
public void draw(){
  background(0,255,0);
  snake.display();
  snake.mover();
  animal.display();

}
public void keyPressed(){
  if(key=='w' || keyCode==UP){
    snake.setVelocidad(new PVector (0,-1));
  }
  if(key=='s' || keyCode==DOWN){
   snake.setVelocidad(new PVector (0,1));
  }
    if(key=='a' || keyCode==LEFT){
    snake.setVelocidad(new PVector (-1,0));
  }
    if(key=='d' || keyCode==RIGHT){
    snake.setVelocidad(new PVector (1,0));
  }
}
