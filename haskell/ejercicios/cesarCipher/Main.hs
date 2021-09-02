module Main where

import Data.Char

car2int::Char->Int
car2int c = ord c - ord 'a'

int2car::Int->Char
int2car i = chr (ord 'a' + i)

desplaza::Char->Int->Char
desplaza ' ' i = ' '
desplaza c i = int2car (mod ((car2int c) + i) 26)

cifrar::[Char]->Int->[Char]
cifrar cad i = [desplaza c i | c <- cad]

descifrar::[Char]->Int->[Char]
descifrar cad i = [desplaza c (-i) | c <- cad]

main :: IO ()
main = do
  print (car2int 'h' )
  print (cifrar "hola alejandro" 3)
  
  print (descifrar "krod dohmdqgur" 3)
