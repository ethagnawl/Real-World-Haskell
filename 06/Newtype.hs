data DataInt = D Int
  deriving (Eq, Ord, Show)

newtype Newtypeint = N Int
  deriving (Eq, Ord, Show)

newtype UniqueID = UniqueID Int
  deriving (Eq)
