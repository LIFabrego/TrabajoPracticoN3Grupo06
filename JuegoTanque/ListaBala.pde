class ListaBala{
   private Bala[] balas;
   
    public ListaBala(){
    balas = new Bala[1000];
  }
  public void actualizarBalas(){
    for(Bala b:balas){
      if(b!=null){
        b.mover();
        b.display();
      }
    }
  }  
  
  public void agregarBala(){
  }
  
  public void eliminarBala(){
  }
  
  public void verificarImpacto(){
  }  
  
  //metodos accesores
  public Bala[] getBalas(){
    return this.balas;
  }
  
  public void setBalas(Bala[] balas){
    this.balas=balas;
  } 
}
