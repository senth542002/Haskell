module FunctionWithWhere where

printInc n = print plusTwo
 where plusTwo = n + 2
 
pritnInc2 n = let plusTwo = n + 2 in print plusTwo

waxOn = x * 5 where x = y ^ 2; y = z + 8; z = 7

triple = waxOn * 3