class Pajaro extends Animal{
  PVector P;
  public Pajaro(){};
  
  public void display(PVector posicion){
    P=posicion;
    noStroke();
    fill(50);
    rect(P.x,P.y,10,10);
  }
}
