Snake snake;
Animal animal;
int d=25;
//int startTime;

public void setup(){
  size(600,600);
  frameRate(10);
  snake = new Snake();
  elegirAnimal();
  

}
public void draw(){
  background(0,255,0);
  drawGrid();
  snake.display();
  snake.mover();
  
  if (snake.comer(animal)){
      println("hay colision");
      elegirAnimal();
  }
  animal.display();
}

  public void elegirAnimal(){
    int tipo=int(random(3));
    switch(tipo){
      case 0:
        animal=new Raton();
        break;
      case 1:
        animal=new Pajaro();
        break;
      case 2:
        animal=new Insecto();
        break;        
    }
  }
public void keyPressed(){
  if(key=='w' || keyCode==UP){
    snake.setDireccion(new PVector (0,-1));
  }
  if(key=='s' || keyCode==DOWN){
   snake.setDireccion(new PVector (0,1));
  }
    if(key=='a' || keyCode==LEFT){
    snake.setDireccion(new PVector (-1,0));
  }
    if(key=='d' || keyCode==RIGHT){
    snake.setDireccion(new PVector (1,0));
  }
}

void drawGrid(){
  for(int i=d; i<width; i+=d){
    stroke(0,0,0);
    line(i,0,i,width-30);
  }
  for(int i=d; i<width-30; i+=d){
    stroke(0,0,0);
    line(0,i,height,i); 
  }
}
