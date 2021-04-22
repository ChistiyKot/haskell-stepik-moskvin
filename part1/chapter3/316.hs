sndHead = snd . head
first ((:) ((,) _ x) y) = x
second ((,) y z : x) = x
third ((,) x y : z) = x
fourth ((,) ((:) _ _) x) = x
fifth ((_, x) : _) = x
sixth ((,) y x : z) = x
