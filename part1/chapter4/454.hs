data Nat = Zero | Suc Nat deriving Show

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

add :: Nat -> Nat -> Nat
add a b = toNat $ fromNat a + fromNat b

mul :: Nat -> Nat -> Nat
mul a b = toNat $ fromNat a * fromNat b

fac :: Nat -> Nat
fac a = toNat $ facN $ fromNat a
  where
    facN 0 = 1
    facN a = a * facN (a - 1)

toNat :: Integer -> Nat
toNat 0 = Zero
toNat n = Suc (toNat $ n - 1)
