class Snake extends GameObject{
  private PVector direccion;
  ArrayList<Cuadrado> cuadrado;
  private ColliderCuadrado collider;
  
  public Snake(int d){
    cuadrado=new ArrayList<Cuadrado>();
    cuadrado.add(new Cuadrado(new PVector (width/2,height/2),color (0,0,0)));
    this.collider=new ColliderCuadrado(new PVector(cuadrado.get(0).x,cuadrado.get(0).y),d);
    this.direccion= new PVector(1,0);
  }
  public void display(){
        for (Cuadrado c: cuadrado){
          c.display();
        }
  }
  public boolean comer(Animal a){
    boolean isCollide = this.collider.validarColision(a.getCollider());
    return isCollide;
  }
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
 
  public PVector getDireccion(){
    return this.direccion;
  }
  
  public void setDireccion(PVector direccion){
    this.direccion=direccion;
  }
}
