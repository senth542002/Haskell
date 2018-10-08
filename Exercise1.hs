module Exercise1 where

finalValue :: String -> String
finalValue x = concat[x, "!"]
finalValue2 :: String -> String
finalValue2 y = y !! 4 : ""

finalValue3 :: String -> String
finalValue3 z = drop 9 z