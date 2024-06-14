class Animal extends GameObject{
 Cuadrado cuadrado;
 private PVector posicion;
 private color col;
 private ColliderCuadrado collider;

 
 public Animal(color col){
   this.col=col;
   this.posicion=new PVector(random(width),random(height));
   cuadrado=new Cuadrado(this.posicion,col);
   this.collider= new ColliderCuadrado(this.posicion,20);
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
