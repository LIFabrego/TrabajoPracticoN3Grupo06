Snake snake;
Animal animal;
int d=25;
ArrayList<Animal> comida;
//int startTime;

public void setup(){
  size(600,600);
  frameRate(10);
  comida=new ArrayList <Animal>();
  snake = new Snake();
  elegirAnimal();
  

}
public void draw(){
  background(0,255,0);
  drawGrid();
  snake.display();
  snake.mover();
  
  if (snake.comer(animal)){
      comida.add(animal);
      //text("comida: "+animal.getNombre(),d*5,height-d/2);
      snake.crecer();
      snake.puntaje(animal);
      elegirAnimal();
  }
  animal.display();
  fill(0);
  textSize(d);
  text("Puntuacion: " + snake.getPuntaje(), d, height-d/2);
  if (comida.size()-1>=0){
    text("comida: "+comida.get(comida.size()-1).getNombre(),d*10,height-d/2);
  }
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
