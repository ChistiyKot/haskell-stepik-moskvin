delAllUpper xs = unwords . filter (\ys -> any (\x -> (x > 'a' && x < 'z')) ys) . words $ xs
