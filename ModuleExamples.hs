module Modules where

import qualified Data.List as M

search :: (Eq a) => [a] -> [a] -> Bool
search needle haystack = 
 let needleLength = length needle in foldl(\acc x -> if take needleLength x == needle then True else acc)False (M.tails haystack)