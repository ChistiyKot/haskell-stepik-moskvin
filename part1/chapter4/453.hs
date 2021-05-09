data List a = Nil | Cons a (List a) deriving Show

fromList :: List a -> [a]
fromList (Cons x (xs)) = x : fromList xs
fromList _ = []

toList :: [a] -> List a
toList = foldr Cons Nil
