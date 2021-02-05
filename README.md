# learning_haskell
純粋関数型プログラミング言語、Haskellの学習記録です。

## REPLの起動
`ghci`
※ 自分の環境の場合はこれでやってる（stackから立ち上げ？）
`stack ghci`

## REPLの終了
`:quit`

## ファイルの実行
`ghc ファイル名.hs`

## REPL内でファイルをロードする
```
Prelude> :l hoge.hs
*Main>
```

```
ロードする前はプロンプトが
Prelude>
となっていて、ロードすると、プロンプトが以下のようになる。
*Main>
ロードしたファイルを再ロードする際は、以下のように行う。
*Main> :l hoge.hs
```
