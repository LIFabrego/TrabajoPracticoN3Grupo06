class Bala implements IMoveable, IDisplayable{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  //Constructores 
  public Bala(){
    imagen = loadImage("bala.png");
  }

  public Bala (PVector posicion){
    this.posicion=posicion;
    this.velocidad=new PVector(300,-300);
    this.imagen = loadImage("bala.png");
  }
    public Bala (PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("bala.png");
  }
  //Metodos
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,20,30);
  }
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y* Time.getDeltaTime(frameRate);    
    }
  }  
  
  
}
