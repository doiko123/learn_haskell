doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
-- doubleSmallNumber x = if x > z0
--                         then x
--                         else x * 2Zaaa
boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- multipleOfTwo リスト[1..10]の各要素を2倍したリスト
multipleOfTwo = [x*2 | x <- [1..10]]
-- multipleOfTwoOverTwelve リスト[1..10]の各要素を2倍したリスト
multipleOfTwoOverTwelve =[x*2 | x <- [1..10], x*2 >= 12]
-- 各要素が10以下であるトリプル
triples = [(a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]
-- 各要素が10以下であるトリプルの中でピタゴラスの定理が成り立つトリプル
rightTriangles = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]
-- 上記について周囲の長さが24のものだけ出力
rightTriangles' = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a],a^2 + b^2 == c^2, a + b + c == 24]

lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky x = "sorry, you're out of luck"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- fib n
--     |fib 0 = 1
--     |fib 1 = 1
--     |fib n = fib (n - 1) + fib (n - 2)

-- main = do
--   fib 100　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　

-- fib :: Int -> Int
-- fib n max
--   | n == 0 = do
--     print 1
--   | n == 1 = do
--     print 1
--   | n <= max = do
--     print n
--     return fib (n - 2) + fib (n - 1)

-- fib :: Int -> Int
-- fib n
--   | n == 0 = do
--     print 1
--   | n == 1 = do
--     print 1

--   | n <= max = do
--   | n == fib (n - 2) + fib (n - 1) = do
--     print n

-- fib :: Integer -> Integer -> IO ()
-- fib n max
--     | n == 0 = do
--         print 1
--     | n == 1 = do
--         print 1
--     | n <= max = do
--         let one = fib (n - 2)
--         let two = fib (n - 1)
--         let sum = one + two
--         print (sum)
    -- return =<< fib (n - 2) + fib (n - 1) max
    -- | otherwise = print 0

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerOrEqual = [a | a <- xs, a <= x]
        larger = [a | a <- xs, a > x]
    in quicksort smallerOrEqual ++ [x] ++ quicksort larger

