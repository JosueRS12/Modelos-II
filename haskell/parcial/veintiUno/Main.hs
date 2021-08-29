module Main where
import Game

main :: IO ()
main = do
  n1 <- getLine 
  n2 <- getLine 
  
  print(obtenerGanador (obtainValue (obtainAs (words n1)) (obtainSinAs (words n1)))  (obtainValue (obtainAs (words n2)) (obtainSinAs (words n2)))) 
