Snake snake;
Animal animal;
//int startTime;

public void setup(){
  size(800,800);
  frameRate(10);
  snake = new Snake();
  //animal = new Animal(color(250,0,250));
  //animal.setPosicion(new PVector(random(width),random(height)));
  mostrarAnimal();

}
public void draw(){
  background(0,255,0);
  snake.display();
  snake.mover();
  animal.display();
  if (snake.comer(animal)){
      mostrarAnimal();
  }

}

  public void mostrarAnimal(){
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
