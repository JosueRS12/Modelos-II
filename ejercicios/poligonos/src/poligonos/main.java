package poligonos;
import poligonos.tiposPoligonos.Circulo;
import poligonos.tiposPoligonos.Cuadrado;
public class main {
    public static void main(String[] args) {
        Circulo cir = new Circulo("circulo", 4);
        Cuadrado cuad = new Cuadrado("cuadrado", 2);
        CalculosPoligonos cal = new CalculosPoligonos();
        
        System.out.println("Para el circulo con radio: "+cir.getRadio()+"cm el valor del area es: "
                +cal.obtenerAreaCirculo(cir));
        
        System.out.println("Para el cuadrado con lados de: "+cuad.getValorLado()+"cm el valor del area es: "
                +cal.obtenerAreaCuadrado(cuad)+"cm");
        
    }
}
