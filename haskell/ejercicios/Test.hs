module Test where

toIntList :: String -> [Int]
toIntList x = map read (words x) :: [Int]
