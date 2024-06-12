class Snake extends GameObject{
  private PVector velocidad;
  private int puntaje,largo,d;
  ArrayList<Cuadrado> cuadrado;
  
  public Snake(){
    posicion= new PVector(50,50);
    velocidad= new PVector();
    largo = 1;
    d=25;
  }
  public void mover(){};
  public void display(){
    noStroke();
    fill(0);
    rect(this.posicion.x,this.posicion.y,d,d);
    //for (Cuadrado c: cuadrado){
    //  rect(this.posicion.x,this.posicion.y,10,10);
    //}
  };
  public void comer(){
  };
  public void crecer(){};
}
