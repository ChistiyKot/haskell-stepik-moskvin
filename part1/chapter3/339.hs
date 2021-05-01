coins = [1,2,3,4,5]
change 0 = [[]]
change n = [x:xs | x <- coins, x <= n, xs <- change (n - x) ]
