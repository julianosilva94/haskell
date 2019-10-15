mult :: Num a => [a] -> a
mult [] = 1 
mult (n:ns) = n * mult ns
