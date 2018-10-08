 module SomeFunction where
 
 someFunction :: (Int, Int) -> (Int, Int) -> ((Int, Int), (Int, Int)) 
 someFunction x y = ((fst x , fst y), (snd x, snd y))
 

 staticFunction y = ((1 , fst y), (2, snd y))
 dynamicFunction x = staticFunction(x)

 addOne x = x + 1
 addValue y = addOne(y)