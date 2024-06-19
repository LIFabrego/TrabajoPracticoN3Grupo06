//Bala bala;
private Tanque tanque;
private ListaBala listaBala;

public void setup(){
  size(600,800);
  background(0);
  generarTanque();
 // bala =new Bala (new PVector(width/2,height/2),new PVector(60,-60)); 
  listaBala = new ListaBala();  
}
public void draw(){
  background(0);
 //bala.display();
 //bala.mover();
 tanque.display();
 tanque.mover(2);
 listaBala.actualizarBalas();
  
}
void generarTanque(){
  Transform transformTanque = new Transform(new PVector(width/2,height/2));
  ImageComponent imageTanque = new ImageComponent("R.png");
  tanque = new Tanque(transformTanque,imageTanque, new PVector(300,300));
}

public void keyPressed(){
  if(key=='d'){
    tanque.mover(1);
  }
  if(key=='a'){
    tanque.mover(0);
  }
   if(key=='s'){
    tanque.disparar(listaBala);
  } 
  
}
