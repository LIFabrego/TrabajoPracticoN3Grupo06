class ImageComponentMuro{
  private PImage imagen;
  
  public ImageComponentMuro(String path){
    imagen = loadImage(path);
  }

  public void displayImage(PVector posicion, int ancho, int alto){
    image(imagen, posicion.x,posicion.y, ancho,alto);
  }
  
}
