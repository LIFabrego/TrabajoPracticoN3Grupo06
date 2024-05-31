class ColliderCuadrado{
  private PVector posicionInicial;
  private PVector posicionFinal;
  
  public ColliderCuadrado(PVector posicionInicial,float dist){
    this.posicionInicial=posicionInicial;
    this.posicionFinal= new PVector (this.posicionInicial.x+dist,this.posicionInicial.y+dist);
  }
  
  public void validarColision (ColliderCuadrado otroCollider){
    
  }
  public PVector getPosicionInicial(){
    return this.posicionInicial;
  }
  public void setPosicionInicial(PVector posicionInicial){
    this.posicionInicial=posicionInicial;  
  }
}
