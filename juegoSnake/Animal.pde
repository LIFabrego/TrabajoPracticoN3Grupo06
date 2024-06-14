class Animal extends GameObject{
 Cuadrado cuadrado;
 private PVector posicion;
 private color col;
 private ColliderCuadrado collider;

 
 public Animal(color col,int d){
   float x = int(random(int(width/d)));
   float y = int(random(int(height/d)));
   this.col=col;
   this.posicion=new PVector((x*d),(y*d));
   cuadrado=new Cuadrado(this.posicion,col);
   this.collider= new ColliderCuadrado(this.posicion);
 }

 public void display(){
    cuadrado.display();
   }

  // set and get
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public ColliderCuadrado getCollider(){
    return this.collider;
  }
}
