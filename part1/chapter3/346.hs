sumOdd :: [Integer] -> Integer
sumOdd = foldr f 0 where
    f x s | odd x = x + s
          | otherwise = s
