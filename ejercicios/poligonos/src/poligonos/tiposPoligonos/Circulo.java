package poligonos.tiposPoligonos;

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

}
