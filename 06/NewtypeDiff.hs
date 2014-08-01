-- types created with the data kw have runtime costs: tracking which constructor created a value
-- newtypes can only have one constructor and so does not incur bookkeeping overhead

-- ok: any number of fields and constructors
data TwoFields = TwoFields Int Int

-- ok: exactly one field
newtype Okay = ExactlyOne Int

-- ok: type params are allowed
newtype Param a b = Param (Either a b)

-- ok: record syntax is allowed
newtype Record = Record {
  getInt :: Int
}

-- bad: no fields
newtype TooFew = TooFew

-- bad: more than one field
newtype TooManyFields = Fields Int Int

-- bad: more than one constructor
newtype TooManyCtors =  Bad Int
                        | Worse Int


