class Raton extends Animal{
  PVector P;
  public Raton(){};
  
  public void display(PVector posicion){
    P=posicion;
    noStroke();
    fill(90);
    rect(P.x,P.y,10,10);
  }
}
