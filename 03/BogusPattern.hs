data Fruit = Apple | Orange
  deriving (Show)

apple = "apple"
orange = "orange"

betterFruit f = case f of
                  "apple" -> Apple
                  "orange" -> Orange
