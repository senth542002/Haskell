module ReverseSentence where

rvrs :: String -> String
rvrs x = concat [drop 9 x , " is ", take 5 x]

main :: IO ()
main = do print (rvrs "Curry is awesome" )