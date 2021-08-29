module CartaMayor where

separateBefore :: [Char] -> String
separateBefore (x:xs)
  | x == '(' = separateBefore xs
  | x /= ',' = x : separateBefore xs
  | otherwise = ""

elimSymbol :: [Char] -> String
elimSymbol  (x:xs)
  | x /= ')' = x : elimSymbol xs
  | otherwise = ""

separateAfter :: [Char] -> String
separateAfter (x:xs)
  | x == ',' = xs 
  | otherwise = separateAfter xs 

toTupla::[String] -> [(Int, String, String)] -- ["(n,p,v)","(n,p,v)"] -> [(n,p,v),(n,p,v)]
toTupla s = [(defineValue (separateBefore x), elimSymbol (separateAfter x), separateBefore x ) | x <- s]


mostrarMayor::(Int,String, String)->String
mostrarMayor (n,p,v) = v ++ " de " ++ p

defineValue::String -> Int
defineValue s
  | s == "As" = 11
  | s == "Dos" = 2
  | s == "Tres" = 3
  | s == "Cuatro" = 4
  | s == "Cinco" = 5
  | s == "Seis" = 6
  | s == "Siete" = 7
  | s == "Ocho" = 8
  | s == "Nueve" = 9
  | otherwise = 10


