module Functions where


--multiplicación


sinMultiplicar::Int->Int->Int
sinMultiplicar a b
  | b == 0 = 0
  | a == 0 = 0
  | otherwise = sinMultiplicar a (b-1)

-- división

sinDividir::Int->Int->Int
sinDividir a b
  | b > a = 0
  | otherwise = 1 + sinDividir (a-b) b 
