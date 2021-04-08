
package poligonos;

public abstract class Poligono {
   private String tipo;
    
    public Poligono(String tipo){
        this.tipo = tipo;       
    }
    
    public String getPoligono(){
        return this.tipo;
    }
    
    public abstract void getInfo();
    public abstract double getArea();
}
