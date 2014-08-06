-- main :: IO -> ()
main = do
  putStrLn "Greetings! What is your name?"
  inpStr <- getLine -- storing an IO action
  putStrLn $ "Welcome to Haskell, " ++ inpStr ++ "!"
