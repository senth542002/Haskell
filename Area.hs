module Area where

area :: Int -> Float
area d = pi * ( r * r)
 where r = fromIntegral d/2

areaAnother :: Int -> Float
areaAnother c = pi * (k * k)
k = c/2