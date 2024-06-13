class Cuadrado{
  private float x,y;
  private int d=20;
  private color col;
  
  public Cuadrado(PVector lado,color col){
    this.x=lado.x;
    this.y=lado.y;
    this.col = col;
  }
  public void display(){
    fill(col);
    rect(x,y,d,d);
  }
}
