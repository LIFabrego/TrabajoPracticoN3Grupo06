class ColliderCuadrado{
  private PVector posicion;
  
  public ColliderCuadrado(PVector posicion){
    this.posicion=posicion;
  }
  
  public boolean validarColision (ColliderCuadrado otroCollider){
    boolean isCollider=false;
    println(this.posicion+"--"+otroCollider.getPosicion());
    if(this.posicion.x==otroCollider.getPosicion().x && this.posicion.y==otroCollider.getPosicion().y){
              isCollider=true;
            }
    return isCollider;        
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  //public void setPosicion(){
  //  this.posicion=posicion;
  //}

}
