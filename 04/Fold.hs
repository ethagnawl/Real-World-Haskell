-- foldl :: (a -> b -> c) -> a -> [b] -> a

-- foldl step zero (x:xs) = foldl step (step zero x) xs
-- foldl _    zero []     = zero


foldr' :: (a -> b -> b) -> b -> [a] -> b

foldr' step zero (x:xs)  = step x (foldr' step zero xs)
foldr' _ zero []         = []

-- myFilter p xs = foldr step [] xs
--   where step x ys | p x = x : ys
--                   | otherwise = ys

-- myMap :: (a -> b) -> [a] -> [b]
-- myMap f xs = foldr step [] xs
--   where step x ys = f x : ys

-- myFoldl :: (a -> b -> c) -> a -> [b] -> a

-- myFoldl f z xs = foldr step id xs z
--   where step x g a = g (f a x)

identity :: [a] -> [a]
identity xs = foldr (:) [] xs

append :: [a] -> [a] -> [a]
append xs ys = foldr (:) ys xs

foldl' _ zero [] = zero
foldl' step zero (x:xs) =
  let new = step zero x
  in new `seq` foldl' step new xs

foldl' (+) 1 (2:[])

strictPair (a,b) = a `seq` b `seq` (a,b)

strictList (x:xs) = x `seq` x : strictList xs
strictList [] = []
