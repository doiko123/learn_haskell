// カリー化とはなんぞや？
// ＞ 関数を引数1つずつに分割してネストさせること

// 部分適用とは？
// ＞ 一部の引数を固定化して新しい関数を作り出すこと

// ＞＞ カリー化すると部分適用が簡単にできる！

// https://qiita.com/7shi/items/a0143daac77a205e7962
// https://developer.yukimonkey.com/article/20200303/



// ①非カリー化
const multThree = (x,y,z) => {
  return x * y * z
};

// ①を実行
multThree(x,y,z)

// ②カリー化
const multThree = (x) => {
  return (y) => {
    return (z) => {
      return x * y * z
    }
  }
}

// ②を実行
multThree(x)(y)(z)

// ③②について部分適用
const multTwoWithSeven = (y) => {
  return (z) => {
    return 7 * y * z
  }
}