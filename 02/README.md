# 第二回 微分方程式の解法

## 1.

微分方程式のうち、一種類の変数のみによる微分しか含まないものを
常微分方程式と呼ぶ。以下の常微分方程式の一般解を求めよ。

### (1)

$$
\frac{\mathrm{d} y}{\mathrm{d} x} = \frac{\ln x}{y}
$$

### (2)

$$
\frac{\mathrm{d} y}{\mathrm{d} x} + y= 2 \sin x
$$

### (3)

$$
\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} + 3 \frac{\mathrm{d} y}{\mathrm{d} x} + 2y = 0
$$

## 2.

微分方程式に含まれる定数は、初期条件などを与えることで
定まる。これを初期値問題(境界値問題)と呼ぶ。次の初期値問題の解を求めよ。
また$x>0$における解の振る舞いを描け。

### (1)

$$
\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} + 4 \frac{\mathrm{d} y}{\mathrm{d} x} + 3y = 0
\qquad y(0) = 0,  \left. \frac{\mathrm{d} y}{\mathrm{d} x} \right|_{x=0} = 1
$$

### (2)

$$
\frac{\mathrm{d}^2 y}{\mathrm{d} x^2} + 2 \frac{\mathrm{d} y}{\mathrm{d} x} + 2y = 0
\qquad y(0) = 1, \left. \frac{\mathrm{d} y}{\mathrm{d} x} \right|_{x=0} = 0
$$

## 3.

微分方程式のうち、独立な二変数以上の微分を含むものを偏微分方程式と呼ぶ。
偏微分方程式について以下の問いに答えよ。

### (1)

$t$と$x$の関数$u(x,t)$について、以下の偏微分方程式の一般解を求めよ(ただし$\kappa >0$)。

$$
\frac{\partial u}{\partial t} =  \kappa \frac{\partial^2 u}{\partial x^2}
$$

### (2)

前問で、固定境界条件$u(0,t) = u(\pi,t) = 0$を与えた場合の特殊解を求めよ。

## 4.

上記の微分方程式は、ほぼすべて線形(linear)方程式であった。
線形とは、$f_1$、$f_2$が方程式の解であるとき、その線形和 $a f_1 + b f_2$も解であるような
性質である($a,b$は定数)。以下の方程式は線形か確認せよ。

### (1)


$$
\frac{\partial u}{\partial t} +  \frac{\partial^3 u}{\partial x^3} + 6  \frac{\partial u}{\partial x}  = 0
$$

### (2)

$$
\frac{\partial u}{\partial t} +  \frac{\partial^3 u}{\partial x^3} + 6  u \frac{\partial u}{\partial x}  = 0
$$
