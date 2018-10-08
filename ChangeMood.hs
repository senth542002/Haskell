module ChangeMood where

data Mood = Blah | Woot deriving Show
changeMood :: Mood -> Mood
changeMood Woot = Blah
changeMood Blah = Woot

changeMood2 :: String -> String
changeMood2 x = if x == "Woot" then "Blah" else "Woot" 