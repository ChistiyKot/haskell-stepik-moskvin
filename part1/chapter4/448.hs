maybeToList :: Maybe a -> [a]
maybeToList x = case x of
  Nothing -> []
  Just x -> [x]

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe x = Just $ head x
