data Log a =
  Log [String] a

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f x = Log [x] . f

-- let add1Log = toLogger (+1) "added one"

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers a f g = Log (logb ++ logc) c where
  (Log logb b) = f a
  (Log logc c) = g b
