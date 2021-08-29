module Main where
import ColorCarta 

main :: IO ()
main = do
  cadena <- getLine
  print(buscar (separate cadena))


