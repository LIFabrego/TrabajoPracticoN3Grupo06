class Snake extends GameObject{
  private PVector velocidad;
  private int puntaje,largo,d;
  ArrayList<Cuadrado> cuadrado;
  
  public Snake(){
    posicion= new PVector(50,50);
    velocidad= new PVector(5,5);
    largo = 1;
    d=25;
  }
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

  public void mover(int direccion){
    switch(direccion){
      case 0: {
        this.posicion.y-=this.velocidad.y;
        break;
      }
      case 1:{
        this.posicion.y+=this.velocidad.y;
        break;
      }
      case 3:{
        this.posicion.x-=this.velocidad.x;
        break;
      }
      case 4:{
        this.posicion.x+=this.velocidad.x;
        break;
      }
    }
  }
  // set and get
    public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
