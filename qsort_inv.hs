qsort_inv :: Ord a => [a] -> [a]
qsort_inv [] = []
qsort_inv (x:xs) = qsort_inv larger ++ [x] ++ qsort_inv smaller
	where
		smaller = [a | a <- xs, a <= x]
		larger = [b | b <- xs, b > x]
