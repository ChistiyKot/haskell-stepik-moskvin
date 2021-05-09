data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Node a b) = 1 + max (height a) (height b)
height _ = 0

size :: Tree a -> Int
size (Node a b) = 1 + size a + size b
size _ = 1
