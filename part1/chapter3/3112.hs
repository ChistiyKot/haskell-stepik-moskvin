sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 xs ys zs = calcSum3 xs ys zs [] where
    calcSum3 [] [] [] r = reverse r
    calcSum3 xs ys zs r = calcSum3 (takeTail xs) (takeTail ys) (takeTail zs) (sum [takeHead(xs), takeHead(ys), takeHead(zs)] : r) where
        takeHead [] = 0
        takeHead (x:xs) = x
        takeTail [] = []
        takeTail (x:xs) = xs
