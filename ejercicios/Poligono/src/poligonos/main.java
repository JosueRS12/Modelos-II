package poligonos;

import tiposPoligonos.Circulo;
import tiposPoligonos.Cuadrado;

public class main {
    
    public static void main(String[] args) {
        Poligono pol1 = new Circulo("circulo",2);
        Poligono pol2 = new Cuadrado("cuadrado",4);
        CalculosPoligonos cal = new CalculosPoligonos();
        
        System.out.println("El area del "+pol1.getPoligono()+" es de: "+ cal.obtenerArea(pol1));
        pol1.getInfo();
        System.out.println("El area del "+pol2.getPoligono()+" es de: "+ cal.obtenerArea(pol2));
        pol2.getInfo();      
    
    
    }


}
