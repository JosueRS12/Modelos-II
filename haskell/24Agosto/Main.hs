module Main where

main :: IO ()
main = do
  
  -- comprension
  --print([(x,y) | x <- [1 .. 3], y <- [4 .. 6]])
  --print([(x,y) | x <- [4 .. 6], y <- [1 .. 3]])
  --print([(x,y) | x <- [1 .. 3], y <- [x .. 6]])

  ----concat
  ----operador
  --print([1 .. 3] ++ [4 .. 6])
  ---- function
  --print(concat [[1 .. 3], [4 .. 6], [10 .. 20]])


  --print ([ head x  | x <- [[1, 2], [3, 4, 5], [5, 6, 7]]])
  --print ([ x  | (x : xs) <- [[1, 2], [3, 4, 5], [5, 6, 7]]])
  --print(concat[ [head [1 .. 3]], [head [3 .. 4]], [head [2 .. 8]]])

  --print ([y | (x:y:xs) <- [[1, 2], [3, 4, 5], [5, 6, 7], [2], [100 .. 200]]])
  --print(sum [ 1 | _ <- [4,5 .. 100]])


  -- zip?
  
   print ([x | x <- [1..10], even x])


