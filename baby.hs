doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2
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