data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
  let (c, s) = go t
   in s `div` c
  where
    go :: Tree Int -> (Int, Int)
    go (Leaf a) = (1, a)
    go (Node a b) =
      let (a1, a2) = go a
          (b1, b2) = go b
       in (a1 + b1, a2 + b2)


{-
-- более красивое решение (не мое)

import Data.Function

data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t = foldr1 (div) $ go t
  where
    go :: Tree Int -> [Int]
    go (Leaf x)   = [x, 1]
    go (Node l r) = on (zipWith (+)) go l r
-}
