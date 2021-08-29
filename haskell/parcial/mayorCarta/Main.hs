module Main where
import CartaMayor

main :: IO ()
main = do
  s <- getLine 
  print( mostrarMayor (maximum (toTupla (words s))) )
