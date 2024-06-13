class Insecto extends Animal{
  PVector P;
  public Insecto(){};
  
  public void display(PVector posicion){
    P=posicion;
    noStroke();
    fill(20);
    rect(P.x,P.y,10,10);
  }
}
