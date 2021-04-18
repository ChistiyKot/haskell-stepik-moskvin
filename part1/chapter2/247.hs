class (Bounded a, Enum a, Ord a) => SafeEnum a where
  ssucc :: a -> a
  ssucc x = if x < maxBound then succ x else minBound

  spred :: a -> a
  spred x = if x > minBound then pred x else maxBound
