ip = show a ++ show b ++ show c ++ show d

data Ip = Ip Int
instance Show Ip where
    show (Ip a) = show a ++ "."

a = Ip 127
b = Ip 224
c = Ip 120
d = 0.12
