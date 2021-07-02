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

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- whereを使ったパターン
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

-- リスト内表記にしたパターン
calcBmis2 xs = [ w / h ^ 2  | (w, h) <- xs]

-- letを使ったパターン
calcBmis3 xs = [ bmi | (w, h) <- xs, let bmi = w / h ^ 2 ]

describeList ls = "The list is "
                ++ case ls of [] -> "empty."
                            [x] -> "a single list"
                            xs -> "a longer list"

-- 階乗を求める関数
fact :: Integer -> Integer
fact n
    | n < 0 = error "error!!" -- 「error」で例外を起こせる
    | n == 0 = 1
    | otherwise = n * fact(n - 1)

fact2 n
    | n < 0 = do
        putStrLn "error!"
    | n == 0 = do
        print 1
    | otherwise = do
        print result
        where result = n * fact(n - 1)

-- フィボナッチ数を求める関数
fibo :: Integer -> Integer
fibo n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = fibo (n - 1) + fibo (n - 2)