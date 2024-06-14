class Animal extends GameObject{
 Cuadrado cuadrado;
 private PVector posicion;
 private color col;
 private ColliderCuadrado collider;
 private String nombre;
 private int valor;

 
 public Animal(color col,int d,String nombre, int valor){
   //nombre animal y valor
   this.nombre=nombre;
   this.valor=valor;
   //
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
  public String getNombre(){
    return this.nombre;
  }
  public int getValor(){
    return this.valor;
  }
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
