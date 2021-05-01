evenOnly :: [a] -> [a]
evenOnly xs = snd $ foldr (\x (idx, acc) -> (idx - 1, if even idx then (x : acc) else acc)) (length xs, []) xs
