# 物理数学

* [HTML版](https://kaityo256.github.io/physmath/)
* [リポジトリ](https://github.com/kaityo256/physmath)

## この講義ノートについて

本講義の目的は、**線形偏微分方程式をフーリエ、ラプラス変換を用いて解けるようになること**である。その過程で、まず微分方程式を解くとはどういうことか学び、フーリエ級数展開が直交基底による展開であることを理解する。その上で、フーリエ、ラプラス変換を学び、逆フーリエ変換、逆ラプラス変換に必要となる複素関数論を簡単に学ぶ。最後に、フーリエ、ラプラス解析をマスターする。式の書き方、計算ミスを防ぐ方法、数式の物理的な解釈などにも触れる。

## はじめに

物理とは、極言すれば現象をあらわす偏微分方程式(支配方程式と呼ばれる)を考え、
それを解く学問である。このとき、方程式の多くは非線形となるだろう。
非線形方程式は特別な場合を除いて解くことは出来ず、さらに近似を行うことで
物事の本質を調べる必要がある。この「近似」も物理の大きな特徴の一つである。
近似しなければ方程式を解くことは出来ず、近似が粗すぎれば何も予言能力のない
結果しか得られない。したがって、近似を行う際には
何が物事の本質かを考えながら問題に取り組む必要がある。

物理では道具として数学の言葉を使うが、物理数学は数学とは異なる。
計算の結果得られる結果にはすべて意味がある。たとえばエネルギー効率が1.0を超えるような
結果が得られたとしたら、何か間違っているはずである。また、ピッチャーの投げる球が
音速を超えるなどしたら、やはりどこかに考え違いがあるはずだ[^1]。
自分が何を求めようとして、何をやっているのかを常に考えながら問題を解く癖を
つけてもらいたい。

[^1]: これらの例は、いずれもテストで本当にやった学生がいる。そうならないように気をつけて欲しい。


## 第一回 次元解析とテイラー展開

* [問題](01/README.md)
* [解答と解説](01/answer.md)

## 第二回 微分方程式の解法

* [問題](02/README.md)

## 第三回 基底と固有値問題

* [問題](03/README.md)

## 第四回 フーリエ級数展開と超関数

* [問題](04/README.md)

## 参考文献

このテストゼミを作成するにあたり、様々な文献を参照しました。まず、全体にわたり「物理の数学 薩摩順吉著 (岩波基礎物理シリーズ)」を参考にさせていただきました。微分方程式やフーリエ変換の問題は「偏微分方程式とフーリエ変換 中村宏樹著 (東京大学基礎工学双書)」を、複素関数論においては「初等関数論 林一道著 (裳華房)」から多くの問題を参考にさせていただきました。あわせて感謝します。

## ライセンス

Copyright (C) 2021-present Hiroshi Watanabe

この文章と図(pptxファイルを含む)はクリエイティブ・コモンズ 4.0 表示 (CC-BY 4.0)で提供する。
