import Data.List.Split (splitOn)
import Text.Read (readMaybe)

data Error = ParsingError | IncompleteDataError | IncorrectDataError String
data Person = Person { firstName :: String, lastName :: String, age :: Int }

parsePerson :: String -> Either Error Person
parsePerson inputString =
  let input = map (splitOn " = ") $ splitOn "\n" inputString
      isInvalid [k, (v:vs)] = False
      isInvalid _ = True
      parse
        | any isInvalid input = Left ParsingError
        | otherwise = validate
      values = map (\[key, value] -> (key, value)) input
      value key = lookup key values
      validate =
        case (value "firstName", value "lastName", value "age") of
          (Just firstName, Just lastName, Just age) ->
            checkData (firstName, lastName, age)
          _ -> Left IncompleteDataError
      checkData (firstName, lastName, age) =
        case readMaybe age :: Maybe Int of
          (Just age) -> Right (Person firstName lastName age)
          _ -> Left (IncorrectDataError age)
   in parse
