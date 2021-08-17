siguiente :: Num a => a -> a
siguiente x = x + 1

doble :: Num a => a -> a
doble x = 2 * x

mitad :: Fractional a => a -> a
mitad x = x / 2

inverso :: Fractional a => a -> a
inverso x = 1 / x

potenciaDos :: Num a => a -> a
potenciaDos x = x ^ 2

positivo :: (Ord a, Num a) => a -> Bool --ord es ordenable  
positivo x = x > 0


-- map, usandolo en el ghci /////////////////////////////////////////////////
-- map positivo [3, 2, (-5)] -> [True, True, False]
-- Creando la funcion map
miMap :: (t -> a) -> [t] -> [a] -- se pasa una funcion () y una lista [t] y se retorna una lista [a]
miMap f [] = []
miMap f (x:xs)  = f x : miMap f xs -- concatenando
-- map por comprension
miMap2 :: (t->a) -> [t] -> [a]
miMap2 f xs  = [f x | x <- xs] -- muestre f(x) para todo x que pertenece a la lista xs
-- ///////////////////////////////////////////////////////////////

--filter : de acuerdo a alguna condicion o caracteristica filtra la salida
--filter (>3) [1,2,3,4,5] -> [4,5]
--filter odd [1,2,3,4,5] -> [1,3,5]
-- creando filter
miFilter :: (a -> Bool) -> [a] -> [a]
miFilter p [] = []
miFilter p (x:xs)
  | p x = x : miFilter p xs 
  | otherwise = miFilter p xs
--por compresion
miFilter2 :: (a -> Bool) -> [a] -> [a]
miFilter2 p xs = [x | x <- xs, p x] -- muestre x para todo x que pertezca a xs que cumpla p(x)
---------------

suma :: Num p => [p] -> p
suma [] = 0
suma (x:xs) = x + suma xs
--otro
suma2 :: (Foldable t, Num b) => t b -> b
suma2 xs = foldr (+) 0 xs  -- 0 es el neutro
--producto
producto :: Num p => [p] -> p
producto [] = 1 -- neutro de la multiplicacion
producto (x:xs) = x * producto xs
--
producto2 :: (Foldable t, Num b) => t b -> b
producto2 xs = foldr (*) 1 xs -- no funciona apartir de ahí
---------------------------------------------------------------

--por comprension
incrementar :: Num a => a -> [a] -> [a]
incrementar n [] = []
incrementar n xs = [ x + n | x <- xs ] -- [patron generador | para todo x que esta en xs]  
-- recursiva
incrementar2 :: Num a => a -> [a] -> [a]
incrementar2 n [] = []
incrementar2 n (x:xs) = x + n : incrementar n xs

--funcion que calcula el factorial
fact :: Int -> Int 
fact 0 = 1
fact x = x * fact (x-1)
--- 3 - > 6; 5 -> 120 

-- crear la lista de mayor a menor
crearLista :: Int -> [Int] 
crearLista 0 = [0]
crearLista x = x : crearLista (x-1)  
-- crear invertir lista
invertirLista :: Num a => [a] -> [a] 
invertirLista[] = []
invertirLista xs = last xs : invertirLista (init xs)  

-- calcular el factorial de una lista
calcularFact :: [Int] -> [Int] 
calcularFact list = map fact list


