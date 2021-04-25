perms :: [a] -> [[a]]
perms [] = [[]]
perms [x] = [[x]]
perms (x:xs) = combine x `concatMap` perms xs
    where
        combine x y = map (\z -> (take z y) ++ [x] ++ (drop z y)) [0..(length y)]

{-
better solution:

perms :: [a] -> [[a]]
perms [] = [[]]
perms [x] = [[x]]
perms (x:xs) = concatMap (insertElem x) (perms xs) where
    insertElem x [] = [[x]]
    insertElem x yss@(y:ys) = (x:yss) : map (y:) (insertElem x ys)
-}
