module Game where
--(Cinco,Picas) (As,Diamantes) (Jota,Picas) (Rey,Diamantes)
--(Nueve,Picas) (Reina,Diamantes) (Jota,Picas) (Rey,Diamantes) (Reina,Treboles)

-- separamos la entrada con words -> ["()","()"]
--n1 n2

-- obtenerGanador ( SumarValores separate words n1,n2)

obtenerGanador:: Int -> Int -> String
obtenerGanador a b
  | (a>21) && (b>21) = "Empate"
  | (a>21) && (b<=21) = "Gana jugador 2"
  | (a<=21) && (b>21) = "Gana jugador 1"
  | (a <= 21) && (b <= 21) && (a>b) = "Gana jugador 1"
  | (a <= 21) && (b <= 21) && (a<b) = "Gana jugador 2"
  | otherwise = "Empate"

obtainSinAs :: [String] -> Int
obtainSinAs s = sum [ defineValue (separateBefore x) | x <- s, (separateBefore x) /= "As"] -- sumatoria sin as


obtainAs :: [String] -> [String] 
obtainAs s = [ x | x <- s, (separateBefore x) == "As"]  -- sumatoria con as


obtainValue :: [String] -> Int -> Int
obtainValue [] suma = suma
obtainValue (x:xs) suma = obtainValue xs (suma + defineAs suma); 



defineAs :: Int -> Int
defineAs suma
  | suma <= 10 = 11
  | otherwise = 1 


separateBefore :: [Char] -> String
separateBefore (x:xs)
  | x == '(' = separateBefore xs
  | x /= ',' = x : separateBefore xs
  | otherwise = ""

defineValue::String -> Int
defineValue s
  | s == "Dos" = 2
  | s == "Tres" = 3
  | s == "Cuatro" = 4
  | s == "Cinco" = 5
  | s == "Seis" = 6
  | s == "Siete" = 7
  | s == "Ocho" = 8
  | s == "Nueve" = 9
  | otherwise = 10

