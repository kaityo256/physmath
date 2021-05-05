# 第九回 ラプラス変換

## 1.

関数$f(x)$について、

$$
\hat{f}(s) = \int_{0}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-sx}
$$

をラプラス変換と呼び、$\hat{f}(s) = {\mathcal L}[f(x)]$とあらわす。ただし、$s$はラプラス変換が存在するように値をとった複素数である。このとき、以下を証明せよ。

### (1)

$$
{\mathcal L}\left[f^{(n)}(x) \right] = s^n \hat{f}(s) - \left\{ s^{n-1}f(0) + s^{n-2}f'(0) + \cdots  \right\}
$$

### (2)

$$
{\mathcal L} \left[ \mathrm{e}^{ax} f(x) \right] = \hat{f}(s-a)
$$


### (3)

$$
{\mathcal L}\left[f*g(x)\right] = {\mathcal L}\left[f(x)\right] {\mathcal L}\left[g(x)\right]
$$

ただし、$f*g(x)$は

$$
f*g(x) = \int_{0}^{x} f(x-y)g(y)\mathrm{d} y
$$

で定義される積分である(たたみ込み積分と呼ばれる)。

## 2.

次の関数$f(x)$のラプラス変換を求めよ。必要であればラプラス変換が存在するための$s$の条件も求めよ。

### (1)

$$
f(x) = 1
$$

### (2)

$$
f(x) = \delta(x)
$$

### (3)

$$
f(x) = x
$$

### (4)

$$
f(x) = \mathrm{e}^{\alpha x}
$$

$\alpha$は複素定数

## 3.

関数$f(x)$とそのラプラス変換$\hat{f}(s)$について、
$s = a + bi$とするとき

$$
f(x) = \frac{1}{2 \pi i} \int_{a-i\infty}^{a+i\infty} \mathrm{d} s \hat{f}(s) \mathrm{e}^{sx}
$$

を逆ラプラス変換と呼ぶ。以下の関数を逆ラプラス変換せよ。

### (1)

$$
\hat{f}(s) = \displaystyle \frac{1}{s-\alpha}
$$

$\alpha$は複素定数

### (2)

$$
\hat{f}(s) =  \displaystyle\frac{s}{s^2+c^2}  
$$

$c$は実定数

## 4.

以下の微分方程式の初期値問題をラプラス変換を用いて解け。

### (1)

$$
\displaystyle\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} - 2\frac{\mathrm{d} y}{\mathrm{d} x} + y = x
\qquad \left( y(0) = y'(0) = 0 \right)
$$

### (2)

$$
\displaystyle\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} + 2\frac{\mathrm{d} y}{\mathrm{d} x} + y = 1
\qquad \left( y(0) = y'(0) = 0 \right)
$$
