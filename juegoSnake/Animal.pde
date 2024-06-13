class Animal extends GameObject{
 private PVector posicion;
 //private color Col;
 //int r;
 //Raton raton;
 //Pajaro pajaro;
 //Insecto insecto;
 
 public Animal(){

 }

 public void display(){
    noStroke();
    fill(250,250,250);
    rect(this.posicion.x,this.posicion.y,20,20);
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
