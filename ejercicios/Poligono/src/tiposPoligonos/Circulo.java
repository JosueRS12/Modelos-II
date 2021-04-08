
package tiposPoligonos;

import poligonos.Poligono;


public class Circulo extends Poligono{
   private int radio;
    
    public Circulo(String tipo, int radio) {
        super(tipo);
        this.radio = radio;
    }

    public int getRadio() {
        return radio;
    } 

    @Override
    public void getInfo() {
         System.out.println("El valor del radio es de: "+radio);
    }

    @Override
    public double getArea() {
        return Math.PI*Math.pow(radio, 2);
    }
}
