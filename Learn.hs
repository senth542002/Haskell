-- Learn.hs

module Learn where

x = 10 * 5 + y

myResult = 5 * x

y = 10

foo x = let y = x * 2
	    z = x ^ 2 in 2 * z * y / 2
		
 