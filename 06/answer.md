# 第六回 複素積分とローラン展開

## 目的

複素関数の正則性および複素積分の基礎について学ぶ。
また、留数定理の準備として、ローラン展開について学ぶ。

## 解答

### 19. (1)

$z_0 = x_0 + i y_0$、$x - x_0 = \Delta x$、$y - y_0 = \Delta y$としよう。$f(z)$の実部を$u(x,y)$、虚部を$v(x,y)$とすると、

$$
  \lim_{\Delta z \rightarrow 0} \frac{f(z+\Delta z) - f(z)}{\Delta z}
  =
  \lim_{\Delta z \rightarrow 0} \frac{u(x+\Delta z,y+\Delta y) - u(x,y)}{\Delta x + i \Delta y}
  + \lim_{\Delta z \rightarrow 0} i \frac{v(x+\Delta z,y+\Delta y) - v(x,y)}{\Delta x + i \Delta y}
$$

ここで、まず$y$軸をあわせて、$x$軸から近づく場合を考える。
すると、$\Delta y = 0$であるから、

$$
\begin{aligned}
  \lim_{\Delta z \rightarrow 0} \frac{f(z+\Delta z) - f(z)}{\Delta z}
  &=
  \lim_{\Delta x \rightarrow 0} \frac{u(x+\Delta x,y) - u(x,y)}{\Delta x}
  + \lim_{\Delta x \rightarrow 0} i \frac{v(x+\Delta x,y) - v(x,y)}{\Delta x}\\
  &=
  \frac{\partial u}{\partial x} + i \frac{\partial v}{\partial x}
\end{aligned}
$$

同様に、$\Delta x = 0$とすると、

$$
\begin{aligned}
  \lim_{\Delta z \rightarrow 0} \frac{f(z+\Delta z) - f(z)}{\Delta z}
  &=
  \lim_{\Delta y \rightarrow 0} \frac{u(x,y+\Delta y) - u(x,y)}{i\Delta y}
  + \lim_{\Delta y \rightarrow 0} i \frac{v(x,y+\Delta y) - v(x,y)}{i\Delta y}\\
  &=
  -i \frac{\partial u}{\partial y} + \frac{\partial v}{\partial y}
\end{aligned}
$$

を得る。分母に$i$があることに注意。これらが一致しなくてはならないのだから、実部と虚部を比較すると、コーシー・リーマンの関係式、

$$
  \frac{\partial u}{\partial x} = \frac{\partial v}{\partial y},
  \frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x}
$$
を得る。

### 19. (2)


$z = x+ iy$とし、$z^2$の実部と虚部を求めると、

$$
\begin{aligned}
  z^2 &= (x+iy)^2\\
  &= x^2 - y^2 +  2ixy
\end{aligned}
$$

したがって、$u = x^2 - y^2$、$v = 2xy$である。
それぞれ$x$および$y$で偏微分すればコーシー・リーマンの関係式を満たすことがわかる。一般に、実部や虚部、絶対値や複素共役など、あらわに複素数を操作する関数以外の関数、すなわち実数関数の$x$をそのまま$z$で置き換えた関数はほぼ正則であり、その実部と虚部はコーシー・リーマンの関係式を満たすと思ってよい。

### 19. (3)

前問と同様に$z = x+ iy$とし、$z^2$の実部と虚部を求めると、

$$
\begin{aligned}
  z\bar{z} &= (x+iy)(x-iy)\\
  &= x^2 + y^2
\end{aligned}
$$

したがって、この関数はつねに実数値をとるので、
実部と虚部の関係式であるコーシー・リーマンの関係式は満たさない。
なお、$z \bar{z} = |z|^2$、すなわち$z$の絶対値であることにも注意しておこう。

### 20. (1)


$z = (1+i)t$とおけば、積分は$t$をパラメータとして、

$$
  \int z^2 \mathrm{d} z = \int_0^1 (1+i)^3 t^2  \mathrm{d} t
$$
とあらわすことができる($\mathrm{d} z = (1+i) \mathrm{d} t$に注意せよ)。これは簡単に積分できて、

$$
  (1+i)^3 \int_0^1 t^2  \mathrm{d} t = \frac{(1+i)^3}{3}
$$

すなわち、単に$z$を実数の場合と同様に

$$
  \int_0^{1+i} z^2 \mathrm{d} z = \left[ \frac{z^3}{3}  \right]_0^{1+i}
$$

とするのと同じ結果が得られた。 **これは今回考えた関数が積分範囲で正則であったからである。** 一般に、積分範囲で正則な複素関数は、実数と同様に積分でき、その値は積分経路に依存しない(積分値は始点と終点のみに依存する)。

### 20. (2)

点$a$を中心とする半径$r$の円は、極座標を用いて$z = a + r\mathrm{e}^{i\theta} ~(0 \le \theta < 2\pi)$とあらわすことができる。$\mathrm{d} z = ri \mathrm{e}^{i\theta} \mathrm{d} \theta$に注意すると、もとの積分は$\theta$をパラメータとして、

$$
  \oint (z-a)^n \mathrm{d} z = i r^{n+1} \int_0^{2\pi} \mathrm{e}^{i(n+1)\theta} \mathrm{d} \theta
$$

と表せる。
ここで、$n = -1$の場合とそうでない場合を分けて考えると、

$$
  \oint (z-a)^n \mathrm{d} z =
  \left\{
  \begin{array}{cccc}
    i r^{n+1} \left[ \displaystyle\frac{\mathrm{e}^{i(n+1)\theta}}{i(n+1)} \right]_0^{2\pi} & = & 0      & (n \neq -1) \\
    i \left[ \theta  \right]_0^{2\pi}                                               & = & 2\pi i & (n=-1)
  \end{array}
  \right.
$$

を得る。すなわち、$z^n$の形を特異点周りに周回積分した場合、
$1/z$以外はすべて$0$となる。これは重要な結果である。
後に述べるローラン展開において、適当な周回積分に寄与する項は
$c_{-1}$のみということを意味する。したがって、この項の値さえ
わかれば積分値が求められる。これも複素関数の正則性という
(関数にとって)厳しい条件からの帰結である。

### 21. (1)


$|z|<1$の場合、例に挙げられた展開で$-z$を代入すればよいから、

$$
\begin{aligned}
  \frac{1}{z-1} &= - \frac{1}{1-z}\\
  &= -(1 + z + z^2 + \cdots + z^n + \cdots) \\
  &= -\sum_{n=0}^{\infty} z^n
\end{aligned}
$$


$|z|>1$の場合、$|1/z|<1$に注意すれば、

$$
\begin{aligned}
  \frac{1}{z-1} &= \frac{1}{z} \frac{1}{1 - 1/z}\\
  &= z^{-1}
  \left(
  1 + z^{-1}+ z^{-2}+ \cdots
  \right)\\
  &= \sum_{n=1}^{\infty} z^{-n}
\end{aligned}
$$

すなわち、 **ローラン展開は同じ中心でも範囲によって係数が異なる** 。正確に言うと、範囲が新たな特異点をまたぐときに値が変わる。
これがなぜかは留数定理を学ぶときに明らかになるだろう。

### 21. (2)

まず、$f(z)$を部分分数分解すると、

$$
  f(z) = \frac{1}{z(z-1)} = \frac{1}{z-1} - \frac{1}{z}
$$

あとは前問と同様に解くことができる。

## 解説

### 正則性

複素関数$f(z)$が、ある領域$D$のすべての点で微分可能であるとき、
$f(z)$は$D$において **正則 (holomorphic)** であるという。
複素関数$f(z)$がある点で微分可能であるためには、その実部と虚部に
コーシー・リーマンの関係式が成り立ってなくてはいけない。
この関係式をさらに$x$,$y$で偏微分してみよう。

$$
\begin{aligned}
  \frac{\partial^2 u}{\partial x^2} &= \frac{\partial^2 v}{\partial x \partial y}\\
  \frac{\partial^2 u}{\partial y^2} &= - \frac{\partial^2 v}{\partial x \partial y}
\end{aligned}
$$

すなわち、

$$
  \Delta u = 0
$$

が成り立つことがわかる。ここで$\Delta \equiv \partial^2/\partial x^2 + \partial^2/\partial y^2$は
ラプラシアンである。同様に、虚部である$v$についても

$$
  \Delta v = 0
$$

が成り立つ。ラプラシアンを演算して0となる関数を **調和関数 (Harmonic function)** であるという。複素関数$f(z)= u(x,y) + i v(x,y)$が正則であるためには、実部$u(x,y)$、虚部$v(x,y)$がそれぞれ調和関数でなくてはならない。したがって、実数関数の微分可能性よりも厳しい条件が必要であり、これが複素関数論の豊富な応用を生み出す。

複素関数が正則でないとは、たとえば$1/z$のように$\lim z \rightarrow 0$で無限大になってしまうものや、$Re z$や$z \bar{z}$のように実部と虚部をあらわに操作する関数などがある。しかし、本ゼミにおいては実積分のために複素積分を用いるのが目的なので実用上は値が無限大になる点においては正則でないと覚えておけば良い。

### 特異点

関数$f(z)$が、点$a$では正則ではないが、その点の近傍に$f(z)$が正則であるような点が存在するとき、$a$を$f(z)$の **特異点 (singular point)** と呼ぶ。特に、$a$の任意の近傍に特異点が無い場合、$a$を孤立特異点と呼ぶ。物理数学で扱われる特異点はほぼすべて孤立特異点である

点$a$が関数$f(z)$の孤立特異点である場合、そのまわりで、

$$
  f(z) = \sum_{n=-\infty}^{\infty} c_n(z-a)^n
$$

と展開できる。これを **ローラン(Laurent)展開** と言う。このとき、$n\ge 0$の項、すなわち、$\sum_{n=0}^{\infty} c_n(z-a)^n$は点$a$においても正則であるから、$f(z)$の特異性は、残りの項
$\sum_{n=-\infty}^{-1} c_n(z-a)^n$によると考えられる。この項をローラン展開の主要部と呼ぶ。

まず、主要部が無い場合は、点$a$を除きうる特異点と呼び、$\lim_{z\rightarrow a} f(z)$の値を適当に再定義すれば$f(z)$は$a$において正則となる。

主要部が無限項である場合、$a$を **真性特異点 (essential singularity)** と呼ぶ。たとえば$\mathrm{e}^{1/z}$は、原点が真性特異点となる。

最後に主要部が有限項である場合、点$a$を **極 (pole)** と呼ぶ。物理数学で扱うのは主にこの極である。特に、主要部の最高次数が$k$である場合、$a$を$f(z)$の **k位の極** と呼ぶ。
