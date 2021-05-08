data Coord a = Coord a a deriving (Show)

getCenter :: Double -> Coord Int -> Coord Double
getCenter size (Coord xn yn) = (Coord x y) where
    x = fromIntegral xn * size + halfSize
    y = fromIntegral yn * size + halfSize
    halfSize = size / 2

getCell :: Double -> Coord Double -> Coord Int
getCell 0 _ = error "size must be > 0"
getCell size (Coord x y) = (Coord xn yn) where
    xn = round $ x / size - 0.5
    yn = round $ y / size - 0.5
