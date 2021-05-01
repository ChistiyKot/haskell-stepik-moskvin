meanList :: [Double] -> Double
meanList = (\pair -> fst pair / snd pair) . (foldr (\x (s, p) -> (x + s, p + 1)) (0, 0))
