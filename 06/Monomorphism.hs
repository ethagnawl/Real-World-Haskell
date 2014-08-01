-- if ghc complains about the monomorphism constraint:
-- - make the function's arguments explicit, instead of implicit
-- - give the definition an explicit type signature, instead of leaning on compiler inference
-- - compile the module with the NoMonomorphismRestriction flag - not available in older versions of ghc

myShow = show

myShow2 value = show value

myShow3 :: (Show a) => a -> String
myShow3 = show
