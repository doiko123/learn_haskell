fizzBuzz n max
    | n == max = do
        if n `mod` 3 == 0 && n `mod` 5 == 0
            then putStrLn "FizzBuzz"
            else print max
    | n `mod` 3 == 0 && n `mod` 5 == 0 = do
        putStrLn "FizzBuzz"
        return =<< fizzBuzz (n + 1) max
    | n `mod` 3 == 0 = do
        putStrLn "Fizz"
        return =<< fizzBuzz (n + 1) max
    | n `mod` 5 == 0 = do
        putStrLn "Buzz"
        return =<< fizzBuzz (n + 1) max
    | otherwise = do
        print n
        return =<< fizzBuzz (n + 1) max

main = do
  putStrLn "FizzBuzzをやるよ"
  fizzBuzz 1 100

-- 参考Qiita：https://qiita.com/ikuo0/items/0c48532927f0a587431a