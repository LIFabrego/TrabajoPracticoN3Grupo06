class ColliderCuadrado{
  private float x,y,distancia;
  
  public ColliderCuadrado(PVector posicion,float dist){
    this.x=posicion.x;
    this.y=posicion.y;
    this.distancia=dist;
  }
  
  public boolean validarColision (ColliderCuadrado otroCollider){
    boolean isCollide=false;
    if( (this.x < otroCollider.x + distancia) && 
            (this.x+distancia > otroCollider.x) && 
            (this.y < otroCollider.y + distancia) && 
            (this.y+distancia > otroCollider.y)){
              isCollide = true;
            }
     return isCollide;
  }
}
