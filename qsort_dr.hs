qsort_dr :: Ord a => [a] -> [a]
qsort_dr [] = []
qsort_dr (x:xs) = qsort_dr smaller ++ [x] ++ qsort_dr larger
	where
		smaller = [a | a <- xs, a < x]
		larger = [b | b <- xs, b > x]
