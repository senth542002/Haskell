

module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness = if cool then putStrLn "eyyyy. What's shaking" else putStrLn "pshhhh" where cool = coolness == "downright frosty yo"

greetIfCool1 :: String -> IO ()
greetIfCool1 coolness = if cool coolness then putStrLn "eyyyy. What's shaking" else putStrLn "pshhhh" where cool v = v == "downright frosty yo"