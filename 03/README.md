# 第三回 基底と固有値問題

## 1.

行列$A$とベクトル${\bf x}$について、$A {\bf x} = \lambda {\bf x}$が成り立つとき、${\bf x}$を$A$の固有ベクトル、$\lambda$を固有値と呼ぶ。

以下の行列について以下の問いに答えよ。

$$
A = \left(
\begin{array}{cc}
1 & -2 \\
-2 & 1
\end{array}
\right)
$$

### (1)

行列の固有値、及び対応する規格化された固有ベクトルを求めよ。ここで求められた固有ベクトルは互いに直交しているか確認せよ。

### (2)

前問で求めた固有ベクトルをそれぞれ${\bf e}_1,{\bf e}_2$とする。
ベクトル${\bf a} =  \displaystyle
\left(
\begin{array}{c}
3 \\ 4
\end{array}
\right)
$
を、

$$
{\bf a} = c_1 {\bf e}_1 +c_2 {\bf e}_2
$$

と展開することを考える。$c_1, c_2$を求めよ。

### (3)

得られた固有ベクトルを用いて行列$A$を対角化せよ。
その結果を用いて$A^n$を求めよ。

## 2.

ハミルトニアン$\mathcal H$に対し、関数$\psi$が${\mathcal H}\psi = E \psi$を満たすとき、$\psi$を波動関数、$E$をエネルギー固有値という。この波動関数とエネルギー固有値を求める問題も固有値問題と呼ぶ。固有値問題の例として、時間を含まない一次元シュレーディンガー(Schr\"odinger)方程式、

$$
 \left( -\frac{\hbar^2}{2m} \frac{\mathrm{d}^2}{\mathrm{d} x^2} + V(x) \right) \psi = E \psi
$$

を考えよう。$V(x)$はポテンシャルを表す。$m$、$\hbar$、$E$は
いずれも正の実数とする。

### (1)

ポテンシャル$V(x)=0$の場合、$\psi(x)$の一般解を求めよ。

### (2)

一次元$-L/2<  x < L/2$の範囲で自由に運動する粒子が従う
規格化された波動関数$\psi$を求めよ。また、対応するエネルギー固有値も求めよ。

### (3)

前問で求めた波動関数について、異なるエネルギー固有値に対応する波動関数が互いに直交することを示せ。

## 3.

前問のポテンシャルとして、$V(x) = m \omega^2 x^2/2$を考える。これは原点からの距離の二乗でエネルギーが高くなる、調和振動子を表している。この系について以下の問いに答えよ。

### (1)

基底状態の波動関数を$\psi_0(x) = N_0 \exp{(-a^2 x^2/2)}$とおいて代入し、これが解であることと規格化条件から$a$、$E$、$N_0$を求めよ。

### (2)

この方程式の一般解は Hermiteの多項式 $H_n(x)$を用いて

$$
\psi_n(x) = N_n H_n(ax) \exp{(-a^2 x^2/2)} 
$$

と表すことができる。$H_n(ax)$の満たすべき微分方程式を求めよ。(ヒント: $ax \rightarrow \xi$と変数変換し、前問で求めた$a$を代入すると微分方程式が簡単な形になる)

### (3)

Hermiteの多項式は、具体的には$H_0 = 1$、$H_1 = 2x$、$H_2 = 4x^2-2$である。$\psi_0(x)$と$\psi_1(x)$、$\psi_2(x)$がそれぞれ直交していることを
確かめよ。