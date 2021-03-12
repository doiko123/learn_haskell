head' :: [a] -> a
head' [] = error "dameyo"
head' (x:_) = x

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b = b
    | otherwise = a

jojo :: String -> String
jojo character
    | character == "Jyotaro" = "oraora"
    | character == "Jyosuke" = "doradora"
    | character == "Giorno" = "mudamuda"
    | otherwise = "ningen sannka"

fizzbuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzbuzz"
    | n `mod` 3 == 0 = "fizz"
    | n `mod` 5 == 0 = "buzz"