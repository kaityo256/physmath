# 第八回 フーリエ逆変換とジョルダンの補題

## 1.

$\displaystyle\lim_{|z| \rightarrow \infty} f(z) = 0$を満たす複素関数$f(z)$を考える。
このとき、ある実数$a>0$について、積分路を以下の図の$C_1$のように取ると、

$$
\lim_{R \rightarrow \infty} \int_{C} f(z)\e^{iaz} = 0
$$

が成り立つ(ジョルダンの補題)。$a<0$のときは$C_2$のように取れば、同様に成り立つ。
このことに注意して、以下の問いに答えよ。

TODO: 図の追加 fig/jordan.eps

### (1)

以下の関数$f(x)$をフーリエ変換せよ。ただし$a>0$とする。

$$
f(x) = \left\{
\begin{array}{cc}
1 & \quad (-a < x < a) \\
0 & \mathrm{otherwise}
\end{array}
\right.
$$

### (2)

前問で求められたフーリエ変換$\hat{f}(k)$を逆フーリエ変換し、$f(x)$に一致することを確かめよ。

ヒント：$x<-a$、$-a \leq x < a$、$a \leq x$の場合にわけて積分路を考えよ。

## 2.

次の微分方程式の境界値問題を以下の手順で解け。

$$
\frac{\mathrm{d}^2 f(x)}{\mathrm{d} x^2} - f(x) = \mathrm{e}^{-|x|} \qquad f(\pm \infty) = f'(\pm \infty)=0
$$

### (1)

微分方程式全体をフーリエ変換せよ。

### (2)

逆フーリエ変換により、解を求めよ(ヒント：$x>0$と$x<0$に場合わけすること)。

### (3)

解を微分方程式に代入し、実際に解であることを確かめよ。

