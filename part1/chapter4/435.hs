data Person = Person { firstName :: String, lastName :: String, age :: Int }

updateLastName :: Person -> Person -> Person
updateLastName person1 person2 = person2 { lastName = newName } where
    newName = lastName person1
