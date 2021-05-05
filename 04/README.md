# 第四回 フーリエ級数展開と超関数

## 1.

$(-\pi \le x < \pi)$で定義されている関数$f(x)$を、

$$
f(x) = \frac{a_0}{2} + \sum_{n=1}^\infty (a_n \cos nx + b_n \sin nx)
$$

の形に展開することをフーリエ級数展開という。以下の関数を
フーリエ級数展開せよ。また、$x=0$を代入して値が正しいか確認せよ。

### (1)


$f(x) = |x|$

### (2)


$$
f(x) = 
\left\{
\begin{array}{cc}
-1 & \quad -\pi \le x < 0 \\
1 & \quad 0 \le x \le \pi 
\end{array}
\right.
$$

## 2.


$(-\pi \le x < \pi)$で定義されている関数$f(x)$を、

$$
f(x) = \sum_{-\infty}^{\infty} c_n \exp{(inx)}
$$

の形に展開することを複素フーリエ級数展開という($c_n$は複素数)。
これについて以下の問いに答えよ。

### (1)

フーリエ級数展開と、複素フーリエ級数展開を比べ、
$c_n$を$a_n$、$b_n$で表せ。

### (2)


$f(x) = \mathrm{e}^x ~(-\pi \le x < \pi)$ を複素フーリエ級数展開し、
この結果を用いて、

$$
\displaystyle\sum_{n=1}^{\infty} \frac{(-1)^n}{1+n^2}
$$

の値を求めよ。

## 3.

 
次の積分で定義される関数$\delta(x)$を、ディラック(Dirac)のデルタ関数という。

$$
\int_{-\infty}^{\infty} \!\!\! \mathrm{d} x \delta(x) f(x) =
\int_{-\varepsilon}^{\varepsilon} \!\!\! \mathrm{d} x \delta(x) f(x) = 
f(0)
$$

ただし$\varepsilon$は任意の正数である。また、
次のような関数$\theta(x)$を階段関数、もしくはヘビサイド(Heaviside)関数という。

$$
\theta(x) = 
\left\{
\begin{array}{cc}
0 & \quad (x < 0) \\
1 & \quad (x \ge 0) \\
\end{array}
\right.
$$

これらの関数について、以下の問いに答えよ。
ただし、デルタ関数、ヘビサイド関数と内積をとる関数$f(x)$は、
$f(\infty) = f(-\infty) = 0$であり、何回でも微分ができる性質を持つものとする。

### (1)

次の等式を証明せよ。

$$
\begin{aligned}
x \delta(x) &= 0\\
\delta(ax) &= \delta(x)/|a|, ~(a \neq 0)
\end{aligned}
$$

### (2)

次の等式を証明せよ。

$$
\displaystyle\frac{\mathrm{d} \theta(x)}{\mathrm{d} x} = \delta(x)
$$

### (3)

デルタ関数$\delta(x)$を、$(-\pi \le x < \pi)$の範囲で定義されていると考えて複素フーリエ級数展開せよ。
