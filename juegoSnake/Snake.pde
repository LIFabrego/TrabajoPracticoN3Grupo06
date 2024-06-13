class Snake extends GameObject{
  private PVector direccion;
  int d=20;
  //private int puntaje,largo,d;
  ArrayList<Cuadrado> cuadrado;
  
  public Snake(){
    cuadrado=new ArrayList<Cuadrado>();
    cuadrado.add(new Cuadrado(new PVector (5*d,5*d),color (0,0,0)));
    //posicion= new PVector(50,50);
    this.direccion= new PVector(1,0);
    //largo = 1;
  }
  public void display(){
        for (Cuadrado c: cuadrado){
          c.display();
        }
  }
  //public void comer(){
  //}
  //public void crecer(){}

  public void mover(){
    float x=cuadrado.get(0).x+this.direccion.x*d;
    float y=cuadrado.get(0).y+this.direccion.y*d;
    if (x>width){
        x=0;
    } else if (x<0){
        x=width;
    }
    if (y>height){
        y=0;
    } else if(y<0){
        y=height;
    }
    cuadrado.add(0, new Cuadrado(new PVector(x,y), color(0, 0, 0)));
    cuadrado.remove(cuadrado.size() - 1);
  }
  // set and get
  //public PVector getPosicion(){
  //  return this.posicion;
  //}
  
  //public void setPosicion(PVector posicion){
  //  this.posicion = posicion;
  //}
  
  public PVector getDireccion(){
    return this.direccion;
  }
  
  public void setDireccion(PVector direccion){
    this.direccion=direccion;
  }
}
