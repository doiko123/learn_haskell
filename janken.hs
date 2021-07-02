import System.Environment
import System.Random

hand :: (Eq a, Num a) => a -> [Char]
hand n
    | n == 0 = "ぐー"
    | n == 1 = "ちょき"
    | n == 2 = "ぱー"
result yourHand enemyHand
    | yourHand == 0 && enemyHand == 0 = "あいこ"
    | yourHand == 0 && enemyHand == 1 = "かち"
    | yourHand == 0 && enemyHand == 2 = "まけ"
    | yourHand == 1 && enemyHand == 0 = "まけ"
    | yourHand == 1 && enemyHand == 1 = "あいこ"
    | yourHand == 1 && enemyHand == 2 = "かち"
    | yourHand == 2 && enemyHand == 0 = "かち"
    | yourHand == 2 && enemyHand == 1 = "まけ"
    | yourHand == 2 && enemyHand == 2 = "あいこ"
main :: IO ()
main = do
    args <- getArgs
    let firstArgs = (head args)
    let num = read firstArgs :: Int
    let yourHand = "あなたの手: " ++ (hand num)
    putStrLn yourHand
    rand <- getStdRandom(randomR(0, 2::Int))
    let enemyHand = "あいての手: " ++ (hand rand)
    putStrLn enemyHand
    let r = result num rand
    putStrLn r

-- 動かすにはrandomモジュールを入れる必要あり。

-- build:
-- % ghc basic.hs
-- Loaded package environment from /Users/i/.ghc/x86_64-darwin-8.10.4/environments/default
-- [1 of 1] Compiling Main             ( basic.hs, basic.o )
-- Linking basic ...

-- run:
-- % ./basic 2
-- あなたの手: ぱー
-- あいての手: ぱー
-- あいこ

-- System.Randomのインストール方法
-- randomの動かし方 - Qiita
-- https://qiita.com/ogawaso/items/4de0d7aac8f7a3c4d1f4