module TypeClasses where

data Person = Person { firstName :: String 
 , lastName :: String
 , age :: Int
 } deriving (Eq)
 
data Person' = Person' { firstName' :: String 
 , lastName' :: String
 , age' :: Int
 } deriving (Eq, Show, Read)

data DaysOfWeek = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday 
 deriving (Eq, Ord, Show, Read , Enum, Bounded)
 
phoneBook :: [(String, String)]
phoneBook = [("Senthil","9912345678"),("Varun","9912345679"),("Arun","9912345680")]

type Name = String
type PhoneNumber = String
type PhoneDictionary = [(Name, PhoneNumber)]

isInPhoneDictionary :: Name -> PhoneNumber -> PhoneDictionary -> Bool
isInPhoneDictionary name phoneNumber phoneDictionary = (name,phoneNumber) `elem` phoneDictionary


 
 