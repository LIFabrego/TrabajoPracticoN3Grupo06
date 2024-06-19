class Tanque {
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad;  
   //Constructores 
  public Tanque(Transform transform, ImageComponent imageComponent){
    this.transform=transform;
    this.imageComponent=imageComponent;
  }
  
  public Tanque(Transform transform, ImageComponent imageComponent, PVector velocidad){
    this.transform=transform;
    this.imageComponent=imageComponent;
    this.velocidad=velocidad;
  }
    
 
  //Metodos
  public void display(){
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosition(),100,100);
  }  
  
  public void mover(int direccion){
    if(direccion==0){
      this.transform.getPosition().x -=this.velocidad.x* Time.getDeltaTime(frameRate);
    }
    if(direccion==1){
      this.transform.getPosition().x +=this.velocidad.x* Time.getDeltaTime(frameRate);
    }
  }
  

  public void disparar(ListaBala listaBala){
    Bala otherBala = new Bala(new PVector(this.transform.getPosition().x,this.transform.getPosition().y));
    Bala[] balas = listaBala.getBalas();
    for(int i=0;i<balas.length;i++){
      if(balas[i]==null){
        balas[i]=otherBala;
        break;
      }
    }
    listaBala.setBalas(balas);    
  }
  
  public void validarImpacto(){
  }
  
 
 
}
