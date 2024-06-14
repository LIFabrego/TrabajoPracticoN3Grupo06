class Animal extends GameObject{
 Cuadrado cuadrado;
 private PVector posicion;
 private color col;

 
 public Animal(color col){
   this.col=col;
   this.posicion=new PVector(random(width),random(height));
   cuadrado=new Cuadrado(this.posicion,col);
 }

 public void display(){
    cuadrado.display();
   }
   //public void nuevoAnimal(){
   //  r=int(random(1,3));
   //  switch(r){
   //  case 1:{
   //     noStroke();
   //     fill(0,250,250);
        
   //    //raton.display(this.posicion);
   //    break;
   //  }
   //  case 2:{
   //     noStroke();
   //     fill(0,0,250);
   //     //pajaro.display(this.posicion);
   //    break;
   //  }
   //  case 3:{
   //     noStroke();
   //     fill(250,0,0);
   //     //insecto.display(this.posicion);
   //    break;
   //  }
   //}
   //}
  // set and get
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
}
