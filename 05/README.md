# 第五回 フーリエ変換

## 1.

関数$f(x)$について、

$$
\hat{f}(k) = \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ikx}
$$

をフーリエ変換と呼び、$\hat{f}(k) = {\mathcal F}[f(x)]$とあらわす。また、

$$
f(x) = \frac{1}{2\pi} \int_{-\infty}^{\infty} \!\!\! \mathrm{d} k \hat{f}(k) \mathrm{e}^{ikx}
$$

を逆フーリエ変換$(f(x) = {\mathcal F}^{-1}[\hat{f}(k)])$と呼ぶ。この時、以下を証明せよ。ただし、
$f^{(n)}(\pm \infty)=0$とする。

### (1)

${\mathcal F}\left[ a f(x) + b g(x) \right] = a{\mathcal F}[f(x)] + b{\mathcal F}[g(x)]$ (線形性)

### (2)

${\mathcal F}\left[f^{(n)}(x) \right] = (ik)^n \hat{f}(k)$

### (3)

${\mathcal F}[f(x+a)] = \mathrm{e}^{iak}\hat{f}(k)$

### (4)

${\mathcal F}[x^n f(x)] = i^n \hat{f}^{(n)}(k)$

### (5)

$$
{\mathcal F}[f*g(x)] = {\mathcal F}[f(x)] {\mathcal F}[g(x)]
$$

ただし、$f*g(x)$は

$$
f*g(x) = \int_{-\infty}^{\infty} f(x-y)g(y)\mathrm{d} y
$$

で定義される積分である(たたみ込み積分と呼ばれる)。

## 2.

次の関数のフーリエ変換を求めよ。ただし$a>0$とする。

### (1)

$$
f(x) = 
\left\{
\begin{array}{cc}
1 & \qquad |x| \le a \\
0 & \qquad |x| > a \\
\end{array}
\right.
$$

### (2)

$$
f(x) = \mathrm{e}^{-a|x|}
$$

## 3.

次の微分方程式を満たす解を$y(x)$、そのフーリエ変換を$\hat{y}(k)$とする。
方程式全体をフーリエ変換することで$\hat{y}(k)$を求めよ。
### (1)

$$
\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} - 2 \frac{\mathrm{d} y}{\mathrm{d} x} = \delta(x)
$$

### (2)

$$
\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} - y = \mathrm{e}^{-ax^2} \qquad (a>0)
$$

