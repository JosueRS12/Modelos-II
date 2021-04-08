package poligonos;

import poligonos.tiposPoligonos.Circulo;
import poligonos.tiposPoligonos.Cuadrado;

public class CalculosPoligonos {

    /*
    public CalculosPoligonos(){     
    }
    */    
    public double obtenerAreaCuadrado(Cuadrado cuad){
        return Math.pow(cuad.getValorLado(), 2);
    }
    
    public double obtenerAreaCirculo(Circulo c){
        return Math.pow(c.getRadio(), 2)*Math.PI;
    }
    
}
