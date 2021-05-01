evenOnly :: [a] -> [a]
evenOnly = foldr (uncurry ($)) [] . zip (cycle [const id, (:)])

{-
через foldr только для примера, лучше решать через генератор списка

evenOnly xs = [x | (x, i) <- zip xs [1..], even i]
-}
