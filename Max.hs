module Max where

 --max :: (Ord a) => a -> a -> a
 multThree :: (Num b) => b -> b -> b -> b
 multThree x y z = x * y * z
 
 compareWithHundred :: (Num a, Ord a) => a -> Ordering
 --compareWithHundred x = compare 100 x
 compareWithHundred = compare 100
 
 dividedByTen :: (Floating a) => a -> a
 dividedByTen = (/10)
 
 applyTwice :: (a -> a) -> a -> a
 applyTwice f x = f(f x)
 
 isUpperAlphaNum :: Char -> Bool
 isUpperAlphaNum = (`elem` ['A'..'Z'])
 
 applyThrice :: (a -> a) -> a -> a
 applyThrice f x = f(f(f x)) 
 
 zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
 zipWith' _ [] _ = []
 zipWith' _ _ [] = []
 zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
 
 add' :: [a] -> [b] -> [(a,b)]
 add' [] _ = []
 add' _ [] = []
 add' (x:xs) (y:ys) = (x,y) : add' xs ys
 
 flip' :: (a -> b -> c) -> (b -> a -> c)
 --flip' f = g where g x y = f y x
 flip' f x y = f y x
 
 addSingle :: a -> b -> (a,b)
 addSingle x y = (x,y)