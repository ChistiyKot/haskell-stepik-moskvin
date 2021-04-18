-- ip = show a ++ show b ++ show c ++ show d

data IpPart = IpPart Int
instance Show IpPart where
    show (IpPart a) = show a ++ "."

a = IpPart 127
b = IpPart 224
c = IpPart 120
d = 12
