Snake snake;
Animal animal;
int d=25;
ArrayList<Animal> comida;
ArrayList<Integer> tiempo; 
Timer startTime;

public void setup(){
  size(600,600);
  frameRate(10);
  comida=new ArrayList <Animal>();
  snake = new Snake();
  elegirAnimal();
  tiempo=new ArrayList <Integer>();
  startTime=new Timer(60);
  startTime.start();
}
public void draw(){
  background(0,255,0);
  if (startTime.gameRunning()){
  drawGrid();
  snake.display();
  snake.mover();
  
  if (snake.comer(animal)){
      comida.add(animal);
      int tim=startTime.getElapsedSeconds();
      tiempo.add(tim);
      //text("comida: "+animal.getNombre(),d*5,height-d/2);
      snake.crecer();
      snake.puntaje(animal);
      elegirAnimal();
  }
  animal.display();
  //texto en pantalla
  fill(0);
  textSize(d);
  text("Puntuacion: " + snake.getPuntaje(), d, height-d/2);
  if (comida.size()-1>=0){
    text("comida: "+comida.get(comida.size()-1).getNombre(),d*10,height-d/2);
  }
  text("time: "+startTime.getElapsedSeconds(),d*20,height-d/2);
  } else {
    textAlign(CENTER, CENTER);
    textSize(32);
    fill(255, 0, 0);
    text("JUEGO FINALIZADO",width/2,100);
    text("Puntaje Total: "+snake.getPuntaje(), width / 2, 150);
  for (int i = 0; i < comida.size(); i++) {
    text(comida.get(i).getNombre()+"-----------"+tiempo.get(i), width/2,185 + i * 30);
  }
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
    line(i,0,i,height-d*2);
  }
  for(int i=d; i<height-d; i+=d){
    stroke(0,0,0);
    line(0,i,width,i); 
  }
}
