data Person = Person { firstName :: String, lastName :: String, age :: Int }

abbrFirstName :: Person -> Person
abbrFirstName person @ Person { firstName = ( x:_:_ ) } = person { firstName = x : "." }
abbrFirstName person = person
