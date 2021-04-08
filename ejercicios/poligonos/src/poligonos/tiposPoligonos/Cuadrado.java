package poligonos.tiposPoligonos;

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

}
