module Map where

--Using Map
 map' :: (a -> b) -> [a] -> [b]
 map' _ [] = []
 map' f (x:xs) = f x : map' f xs
 
--Using filters
 
 filter' :: (a -> Bool) -> [a] -> [a]
 filter' _ [] = []
 filter' f (x:xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs
 
 filter'' :: (a -> Bool) -> [a] -> [a]
 filter'' f (x:xs) = [ x | x <- xs, f x == False ]
 
 quickSort' :: (Ord a) => [a] -> [a]
 quickSort' [] = []
 quickSort' (x:xs) = 
  let smallerSorted = quickSort' (filter' (<=x) xs)
      biggerSorted = quickSort' (filter' (>x) xs)
  in smallerSorted ++ [x] ++ biggerSorted

 largestDivisible :: (Integral a) => a
 largestDivisible = head (filter' predicate [100000,99999..])
  where predicate x = x `mod` 3829 == 0
  
  --Take while
 sumOfOddSquares :: (Integral a) => a
 sumOfOddSquares =  sum ( takeWhile (< 10000)(filter' odd (map' (^ 2) [1..])))
 sumOfOddSquares' = sum (takeWhile (<10000) [n^2 | n <- [1..], odd (n^2)])
 
 chain :: (Integral a) =>  a -> [a]
 chain 1 = [1]
 chain x
  | even x = x: chain (x `div` 2)
  | odd x = x: chain ((x * 3 ) + 1)
  
 chainGreaterThan15 :: Int 
 chainGreaterThan15 = length(filter' isLongEnough (map' chain [1..100]))
    where isLongEnough xs = length xs > 15
 
 listForFun = map' (*) [0..]
 
 --Lambdas

 chainGreaterThan15WithLambda :: Int
 chainGreaterThan15WithLambda = length (filter' (\xs -> length xs > 15) (map' chain [1..100]))
 
 addThree :: (Num a) => a -> a -> a -> a
 addThree x y z = x+y+z
 
 addThree' :: (Num a) => a -> a -> a -> a
 addThree' = \x -> \y -> \z -> x + y + z
 
 flip' :: (a -> b -> c) -> b -> a -> c 
 flip' f = \x y -> f y x
 
 -- fold left
 sum' :: (Num a) => [a] -> a
 sum' [] = 0
 sum'(x:xs) = x + sum' xs
 
 sum'' :: (Num a) => [a] -> a
 sum'' xs = foldl (\acc x -> acc + x) 0 xs
 
 elem' :: (Eq a) => a -> [a] -> Bool
 elem' x xs = foldl (\acc y -> if y == x then True else acc) False xs
 
 map'' :: (a -> b) -> [a] -> [b]
 map'' f ys = foldr (\x acc -> f x: acc) [] ys
 
 map''' :: (a -> b) -> [a] -> [b]
 map''' f xs = foldl (\acc y -> acc ++ [f y]) [] xs
 
 reverse' :: [a] -> [a]
 reverse' xs = foldr (\y acc -> acc ++ [y])[] xs
 
 reverse'' :: [a] -> [a]
 reverse'' xs = foldl (\acc y -> y: acc )[] xs
 
 reverse''' :: [a] -> [a]
 reverse''' = foldl (\acc y -> y: acc )[]
 
 reverse'''' :: [a] -> [a]
 reverse'''' = foldl (flip (:))[]
 
 maximum'' :: (Ord a, Num a) => [a] -> a
 maximum'' xs = foldl (\acc y -> if y > acc then y else acc) 0 xs 
 
 head' :: (Num a) => [a] -> a
 head' xs = foldr (\y acc -> y) 0 xs
 
 head'' :: (Num a) => [a] -> a
 head'' = foldr1 (\y _ -> y)
 
 last' :: (Num a) => [a] -> a
 last' = foldl1 (\_ x -> x)
 
 sqrtSums :: Int
 sqrtSums = length(takeWhile (<1000) (scanl1 (+)(map' (sqrt) [1..])))+1
 
 --Function Composition
 
 functionComposition1 = map (\x -> negate (abs x))[5, -3, -6, 7, -19, 24]
 
 functionComposition2 = map (negate . abs)[5, -3, -6, 7, -19, 24]
 
 functionComposition3 = map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
 
 functionComposition4 = map (negate . sum . tail) [[1..5],[3..6],[1..7]]
 
 functionComposition5 = replicate 100 (product (map (*3) (zipWith max [1, 2, 3, 4 ,5, 6] [4, 5, 6, 7, 8])))
 
 functionComposition6 = replicate 100 . product . map (*3) . zipWith max [1, 2, 3, 4 ,5, 6] $ [4, 5, 6, 7, 8]
 
 
  