module ColorCarta where

-- # La mayor carta

--Dada una cartas (valor, pinta) decir el color de la misma teniendo en cuenta que: 
--- los valores posibles de las cartas son:
  --- As
  --- Dos
  --- Tres
  --- Cuatro
  --- Cinco
  --- Seis
  --- Siete
  --- Ocho
  --- Nueve
  --- Diez
  --- Jota
  --- Reina
  --- Rey
--- las pintas posibles y su respectivo color son:
  --- Treboles (Negro)
  --- Corazones (Rojo)
  --- Picas (Negro)
  --- Diamantes (Rojo)
--- la carta ingresa como una cadena similar al siguiente ejemplo:
-- <pre>
    --(Cuatro,Treboles)
-- </pre>
--- la salida debe corresponder al color de la carta
-- <pre>
    --Negro
-- </pre>
--

type Valor = Int
type Pinta = String
type Color = String
type Carta = (Valor, Pinta)
type Cartas = []


buscar:: String -> String
buscar pint 
  | pint == "Treboles)" = "Negro"
  | pint == "Corazones)" = "Rojo"
  | pint == "Diamantes)" = "Rojo"
  | pint == "Picas)" = "Negro"
  | otherwise = "no aplica"


separate :: [Char] -> String
separate (x:xs)
  | x == ',' = xs 
  | otherwise = separate xs 










