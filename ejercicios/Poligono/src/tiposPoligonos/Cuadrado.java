
package tiposPoligonos;

import poligonos.Poligono;


public class Cuadrado extends Poligono{
    private int valorLado;
    
    public Cuadrado(String tipo, int valorLado){
        super(tipo);
        this.valorLado = valorLado;
    }

    public int getValorLado() {
        return valorLado;
    }

    @Override
    public void getInfo() {
        System.out.println("El valor del lado es de: "+valorLado);
    }

    @Override
    public double getArea() {
        return Math.pow(valorLado, 2);
    }
}
