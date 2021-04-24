groupElems :: Eq a => [a] -> [[a]]
groupElems xs = doGroup xs [] where
    doGroup [] r = reverse r
    doGroup (x:xs) r = doGroup (snd (sp x xs)) ((x : (fst (sp x xs))) : r)
        where sp x xs = span (== x) xs
