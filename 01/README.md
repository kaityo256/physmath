# 第一回 次元解析とテイラー展開

## 1.

物理量にはすべて次元(単位)がある。長さの次元を[L]、時間の次元を$[T]$、質量の次元を$[M]$と表すことにすると、速さは$[L/T]$、運動量は$[M L/T]$などの次元を持っている。次元について以下の問いに答えよ。

### (1) 

バネ定数$k$のバネにつながれた、質量$m$の質点がある。
この質点の振動周期$T$は$k$及び$m$だけで決まるであろう。
そこで、

$$
T \sim k^{\alpha} m^{\beta} 
$$

とおいて、次元が合うように$\alpha$、$\beta$の値を決めよ。

### (2) 

一様重力下(重力加速度$g$)において、質量$m$、長さ$l$の単振り子があるとする。
この振動周波数$\omega$の$m$、$g$、$l$依存性を知りたい。
前問と同様に、

$$
\omega \sim l^{\alpha} m^{\beta} g^{\gamma}
$$

とおいて、次元が合うように$\alpha$、$\beta$、$\gamma$の値を決め、
結果について考察せよ。

## 2.

一様重力下(重力加速度$g$)における質量$m$のボールの運動を考える。簡単のため、空気抵抗などは無視する。

### (1)

ボールの運動方程式を立てよ。

### (2)

基準の位置からの高さを$y$として、全エネルギーを書け。このとき、運動エネルギーと位置エネルギーの次元が等しいことを確かめよ。

### (3)

運動方程式から全エネルギーが保存することを確かめよ。

### (4)

初速$V_0$とし、仰角$\theta$で地面からボールを投げるとする。最も遠くに飛ぶ角度を求めよ。

## 3.

ある関数$f(x)$を、特定の点$x_0$の近傍で

$$
f(x) = c_0 + c_1(x-x_0) + c_2 (x-x_0)^2 + \cdots 
$$

と展開することを考える(テイラー展開)。
両辺を適当に微分し、$x=x_0$を代入することで係数$c_n$を求めよ。

## 4.

次の関数を$x=0$の周りでテイラー展開せよ。

### (1)
$\sin x$ 

### (2) 
$\cos x$ 

### (3)
$\ln (1+x)$ 

## 5.

$\sin x$を$x=0$の周りで、$x$について1次まで展開した場合と3次まで展開した場合で、どの程度近似の程度が異なるか、$0 \le x \le \pi$の範囲でグラフに描いて考察せよ。特に$x = \pi/2$を代入した場合の値の違いを見よ。