sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

-- *Main> sum' [3,5,2,1]
-- 11