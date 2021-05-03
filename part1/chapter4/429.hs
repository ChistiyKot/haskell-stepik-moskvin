data Bit = Zero | One
data Sign = Minus | Plus
data Z = Z Sign [Bit]

toInt (Z sign input) =
   let carry = case sign of { Minus -> -1; Plus -> 1 }
       t Zero r = r * 2
       t One r = r * 2 + 1
       item = foldr t 0 input
   in carry * item

fromInt input =
   let (carry, item) = if input < 0 then (Minus, -input) else (Plus, input)
       t 0 = []
       t input = (input `mod` 2) : t (input `div` 2)
       t1 0 = Zero
       t1 1 = One
   in Z carry (map t1 (t item))

add :: Z -> Z -> Z
add x y = fromInt (toInt x + toInt y)

mul :: Z -> Z -> Z
mul x y = fromInt (toInt x * toInt y)
