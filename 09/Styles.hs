tidyLet = let foo = undefined
              bar = foo * 2
          in undefined

commonDo = do
  something <- undefined
  return []

goodWhere = take 5 lambdas
  where lambdas = []

alsoGood =
    take 5 lambdas
  where
    lambdas = [
