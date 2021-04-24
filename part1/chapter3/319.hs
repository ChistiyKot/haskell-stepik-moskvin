-- task 1. sum

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' [x] = x
sum' (x:xs) = x + sum' xs

-- task 2. max

max' :: (Ord a) => [a] -> a
max' [] = error "Your list is empty"
max' [x] = x
max' (x1:x2:xs) = max' ((max x1 x2):xs)

-- task 3. reverse

reverse' :: [a] -> [a]
reverse' xs = doReverse xs [] where
    doReverse [] ys = ys
    doReverse (x:xs) ys = doReverse xs (x:ys)
