class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab x | doesEnrageMork x && not (doesEnrageGork x) = stomp x
                  | doesEnrageGork x && not (doesEnrageMork x) = stab x
                  | doesEnrageMork x && doesEnrageGork x = stomp $ stab x
                  | otherwise = x
