class Cuadrado{
  private float x,y;
  private int d=25;
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
  public PVector getPosicion(){
    return new PVector (this.x,this.y);
  }
}
