module Listas where

cuadradoLista::[Int]->[Int]
cuadradoLista [] = []
cuadradoLista lista = [x*x | x <- lista]


-- cuadrado lista2
cuadradoLista2::[Int]->[Int]
cuadradoLista2 [] = []
cuadradoLista2 (y:ys) = y*y : cuadradoLista2 ys

-- cuadrao
cuadrado::Int->Int
cuadrado n = n * n

-- cuadrado map
cuadradoMap::[Int]->[Int]
cuadradoMap lista = map cuadrado lista 
 
