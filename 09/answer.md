# 第九回 ラプラス変換

## 目的

ラプラス変換とは何かを学ぶ。ラプラス変換により、微分方程式の
初期値問題が簡単に解けることを理解する。
ラプラス逆変換の公式を複素積分により導けるようにする。

## 解答

### 28. (1)

フーリエ変換の場合と同様に部分積分を行う。ただし、積分が$x=0$からであるため、$f(0)$などが出てくることに注意。

$$
\begin{aligned}
  {\mathcal L}[f'(x)] &= \int_0^\infty \mathrm{d} x f'(x)\mathrm{e}^{-sx} \\
  &= \left[ -f(x)\mathrm{e}^{-sx} \right]_0^{\infty}  +  s \int_0^\infty \mathrm{d} x f(x) \mathrm{e}^{-sx}\\
  &= s {\mathcal L}[f(x)] + f'(0)
\end{aligned}
$$

高次の微分も同様。

### 28. (2)

ラプラス変換の定義から、

$$
  {\mathcal L}[\mathrm{e}^{ax }f(x)] = \int_0^\infty \mathrm{d} x f(x)\mathrm{e}^{-(s-a)x}
$$

$s-a = s'$と思えば、

$$
\begin{aligned}
  {\mathcal L}[\mathrm{e}^{ax }f(x)] &= \int_0^\infty \mathrm{d} x f(x)\mathrm{e}^{-s'x}\\
  &= \hat{f}(s')\\
  &= \hat{f}(s-a)
\end{aligned}
$$

### 28. (3)

$$
\begin{aligned}
  {\mathcal L}[f*g(x)] &=  \int_{0}^{\infty} \mathrm{d} x \mathrm{e}^{-sx} \int_{0}^{x} \mathrm{d} y f(x-y)g(y)
\end{aligned}
$$

ここで、積分順序を入れ替える。

$$
  \int_0^{\infty} \mathrm{d} x \int_0^{x} \mathrm{d} y = \int_0^{\infty} \mathrm{d} y \int_y^{\infty} \mathrm{d} x
$$

に注意すると、

$$
\begin{aligned}
  {\mathcal L}[f*g(x)] &=  \int_0^{\infty} \mathrm{d} y \int_y^{\infty} \mathrm{d} x  \mathrm{e}^{-sx} f(x-y)g(y) \\
  &= \int_0^{\infty} \mathrm{d} y g(y) \int_y^{\infty} \mathrm{d} x  \mathrm{e}^{-sx} f(x-y) \\
  &= \int_0^{\infty} \mathrm{d} y g(y) \mathrm{e}^{-py} \int_y^{\infty} \mathrm{d} x  \mathrm{e}^{-s(x-y)} f(x-y) \\
  &= \int_0^{\infty} \mathrm{d} y g(y) \mathrm{e}^{-py} \int_0^{\infty} \mathrm{d} x'  \mathrm{e}^{-sx'} f(x') \\
  &= {\mathcal L}[g] {\mathcal L}[f]
\end{aligned}
$$

ただし、途中で$x-y = x'$とおくことで、二項目の積分を$y$に依存しないようにした。

### 29. (1)

ラプラス変換の定義から、

$$
\begin{aligned}
  {\mathcal L}[1] &= \int_0^{\infty} \mathrm{e}^{-sx} \mathrm{d} x\\
  &= \frac{1}{s}
\end{aligned}
$$

### 29. (2)

$$
\begin{aligned}
  {\mathcal L}[\delta(x)] &= \int_0^{\infty} \mathrm{d} x \delta(x) \mathrm{e}^{-sx}\\
  &= 1
\end{aligned}
$$

### 29. (3)

$$
\begin{aligned}
  {\mathcal L}[x] &= \int_0^{\infty}  x \mathrm{e}^{-sx} \mathrm{d} x\\
  &= \left[ \frac{x \mathrm{e}^{-sx}}{-s} \right]_0^{\infty} + \frac{1}{s} \int_0^{\infty} \mathrm{e}^{-sx} \mathrm{d} x\\
  &= \left[ -\frac{\mathrm{e}^{-sx}}{s^2} \right]_0^{\infty} \\
  &= \frac{1}{s^2}
\end{aligned}
$$

### 29. (2)

$$
\begin{aligned}
  {\mathcal L}[\mathrm{e}^{\alpha x}] &= \int_0^{\infty}  \mathrm{e}^{\alpha x} \mathrm{e}^{-sx} \mathrm{d} x\\
  &= \int_0^{\infty}  \mathrm{e}^{-(s-\alpha)x} \mathrm{d} x\\
  &= \left[ - \frac{\mathrm{e}^{-(s-\alpha)x}}{s-\alpha}  \right]_0^{\infty}\\
  &= \frac{1}{s-\alpha}
\end{aligned}
$$

ただし、$x \rightarrow \infty$で$\mathrm{e}^{-(s-\alpha)x} \rightarrow 0$であるために、${\mathrm Re} s > \alpha$でなくてはならない。

### 30. (1)

逆ラプラス変換の定義から、

$$
  f(x) = \frac{1}{2 \pi i} \int_{a-i\infty}^{\alpha+i\infty} \mathrm{d} s \frac{\mathrm{e}^{sx}}{s-\alpha}
$$

ここで、複素積分を用いるが、$\mathrm{e}^{sx}$があるため、$x$の正負によって積分範囲を変える必要がある。$x>0$の時は図$\ref{fig_laplace_int}$の左のように積分路$C$を取ることで、ジョルダンの補題から円弧の部分の積分の寄与は$0$である。また、積分路の中には$z=\alpha$が一位の極として含まれるので、留数定理より

$$
\begin{aligned}
  f(x) &= \frac{1}{2 \pi i} \int_C \mathrm{d} z \frac{\mathrm{e}^{zx}}{z-\alpha}\\
  &= \mathrm{e}^{\alpha x}
\end{aligned}
$$


$x<0$の場合は逆向きに積分路を取る。このとき、積分路の中には極が含まれないため、

$$
  f(x) = 0
$$

以上から、

$$
  f(x) = \left\{
  \begin{array}{cc}
    0       & \qquad x<0 \\
    \mathrm{e}^{ax} & \qquad x>0
  \end{array}
  \right.
$$

![laplace_int.png](laplace_int.png)

ラプラス逆変換を行うための積分路。ジョルダンの補題により、$\mathrm{e}^{sx}$があるため、$x>0$の場合は左、$x<0$の場合は右を周る積分路を取らなくてはならない。このとき、ラプラス変換が存在する条件は、$s$の実部がすべての極の実部よりも大きいことなので、$x<0$の場合は必ず$0$となる。
  
### 30. (2)


前問と同様に$x<0$では$f(x) = 0$となるので、$x>0$の場合のみ考える。

$$
\begin{aligned}
  f(x) &= \frac{1}{2 \pi i} \int_C \mathrm{d} z \frac{z \mathrm{e}^{zx}}{z^2+c^2}
\end{aligned}
$$

ここで、特異点は$z = ic, -ic$の二つで、それぞれ一位の極である。
$z = ic$における留数は、

$$
  \left. \frac{z \mathrm{e}^{zx}}{z+ic} \right|_{z = ic} = \frac{1}{2}\mathrm{e}^{icx}
$$

同様に$z = -ic$における留数は、

$$
  \left. \frac{z \mathrm{e}^{zx}}{z-ic} \right|_{z = -ic} = \frac{1}{2}\mathrm{e}^{-icx}
$$

両方足せば、

$$
  f(x) = \frac{\mathrm{e}^{icx}+\mathrm{e}^{-icx}}{2} = \cos cx
$$

を得る。

### 31. (1)

微分方程式全体をラプラス変換すると、$f(0)=f'(0)=0$より、

$$
  (s^2 - 2s +1) \hat{y}(s) = \frac{1}{s^2}
$$

すなわち、

$$
  \hat{y}(s) = \frac{1}{s^2 (s-1)^2}
$$

これを部分分数分解すると、

$$
  \hat{y}(s) = \frac{-2}{s-1} + \frac{1}{(s-1)^2} + \frac{2}{s} + \frac{1}{s^2}
$$

ここで、それぞれ

$$
\begin{aligned}
  {\mathcal L}[\mathrm{e}^x] &= \frac{1}{s-1}\\
  {\mathcal L}[x\mathrm{e}^x] &= \frac{1}{(s-1)^2}\\
  {\mathcal L}[1] &= \frac{1}{s}\\
  {\mathcal L}[x] &= \frac{1}{s^2}
\end{aligned}
$$

であるから、

$$
  f(x) = -2 \mathrm{e}^{x}+x\mathrm{e}^x+2+x
$$


微分方程式全体をラプラス変換すると、$f(0)=f'(0)=0$より、

$$
  (s^2 + 2s +1) \hat{y}(s) = \frac{1}{s}
$$

すなわち、

$$
  \hat{y}(s) = \frac{1}{s(s+1)^2}
$$

右辺を部分分数分解する。
やりかたを丁寧に解説すると、

$$
  \frac{1}{s(s+1)^2} = \frac{a}{s} + \frac{b}{s+1} + \frac{c}{(s+1)^2}
$$

と分解できたとすると、両辺に$s$をかけてから$s=0$を代入すれば、それは$a$である。すなわち、

$$
  a = \left. \frac{1}{(s+1)^2}\right|_{s=0} = 1
$$

同様に$(s+1)^2$を両辺にかけて$s=-1$を代入すれば、

$$
  c = \left. \frac{1}{s}\right|_{s=-1} = -1
$$

$b$を求めるには、$(s+1)^2$を両辺にかけて微分してから$s=-1$を代入する。
よって、

$$
  b = \left. \left(\frac{1}{s}\right)^2 \right|_{s=-1} = -1
$$

以上より、

$$
  \hat{y}(s) =  \frac{1}{s} - \frac{1}{s+1} - \frac{1}{(s+1)^2}
$$

逆ラプラス変換すれば、

$$
  y(x) =  1 - \mathrm{e}^{-x} - x\mathrm{e}^{-x}
$$

これは確かに$y(0)=y'(0) = 0$であり、代入すると解になっている。


## 解説

### ラプラス変換

フーリエ変換では、関数$f(x)$は無限区間$-\infty < x < \infty$で定義されていた。変数を時間だと思えば、これは系に安定に存在する解について調べていることになる。それに対し、電気回路にスイッチを入れたり、バネをはじいたりと、それまで静的であった系になんらかの刺激を与えたときの応答を知りたい場合がよくある。そのような過渡的な現象の解析に威力を発揮するのが **ラプラス変換 (Laplace transform)** である。過渡的な現象は、微分方程式の初期値問題を解くことに帰着される。ラプラス変換は、微分方程式の初期値問題を簡単に解く処方箋を与える。

### ラプラス変換とフーリエ変換

ある関数$f(x)$に対して、次のような関数$g(x)$を考える。

$$
  g(x) = \left\{
  \begin{array}{cc}
    0             & \qquad x<0      \\
    \mathrm{e}^{-ax} f(x) & \qquad x \geq 0
  \end{array}
  \right.
$$


ここで、$g(x)$をフーリエ変換すると、

$$
\begin{aligned}
  {\mathcal F}[g(x)] &= \int_{-\infty}^{\infty} \mathrm{d} x g(x) \mathrm{e}^{-ikx}\\
  &= \int_{0}^{\infty} \mathrm{d} x \mathrm{e}^{-ax} f(x) \mathrm{e}^{-ikx}\\
  &= \int_{0}^{\infty} \mathrm{d} x f(x) \mathrm{e}^{-(a+ik)x}
\end{aligned}
$$

ここで、$s = a+ik$とすると、

$$
\begin{aligned}
  \int_{0}^{\infty} \mathrm{d} x f(x) \mathrm{e}^{-(a+ik)x} &= \int_{0}^{\infty} \mathrm{d} x f(x) \mathrm{e}^{-sx}\\
  &= {\mathcal L}[f(x)]
\end{aligned}
$$

これは$f(x)$のラプラス変換に他ならない。フーリエ変換不可能な関数でも、$a$を十分に大きく取れば$\mathrm{e}^{-ax} f(x)$の積分が収束し、ラプラス変換が可能である場合がある。すなわち、ラプラス変換とは、$\mathrm{e}^{-ax}$をかけて収束範囲を広げたフーリエ変換と考えることができる。

さて、${\mathcal F}[g(x)]$をフーリエ逆変換しよう。

$$
\begin{aligned}
  g(x) &= \frac{1}{2\pi} \int_{-\infty}^{\infty} \mathrm{d} k {\mathcal F}[g(x)] \mathrm{e}^{ikx}\\
  &= \frac{1}{2\pi} \int_{-\infty}^{\infty} \mathrm{d} k \hat{f}(s) \mathrm{e}^{ikx}
\end{aligned}
$$

ここで、${\mathcal F}[g(x)] = \hat{f}(s)$であり、$x>0$であれば$g(x) = \mathrm{e}^{-ax} f(x)$であるから、

$$
\begin{aligned}
  \mathrm{e}^{-ax} f(x) &= \frac{1}{2\pi }  \int_{-\infty}^{\infty} \mathrm{d} k \hat{f}(s) \mathrm{e}^{ikx}\\
  f(x) &= \frac{1}{2\pi }  \int_{-\infty}^{\infty} \mathrm{d} k \hat{f}(s) \mathrm{e}^{(a+ik)x}\\
\end{aligned}
$$

$s = a + ik$と置くと、$\mathrm{d} s = i \mathrm{d} k$、
積分範囲が$a - \infty < s < a + \infty $となることから、

$$
  f(x) = \frac{1}{2\pi i}  \int_{a-\infty}^{a+\infty} \mathrm{d} s \hat{f}(s) \mathrm{e}^{sx}\\
$$

これは、ラプラス逆変換の定義である。

ここで$a$は 積分

$$
  \int_0^{\infty} \mathrm{e}^{-ax} |f(x)| \mathrm{d} x
$$

が収束するように選ばれたのであった。これは、$a$が$f(x)$のすべての極よりも右側にくることを意味する\footnote{ここでは詳細は省略する。参考書を参照のこと}。これによりラプラス逆変換が$x<0$の時に$f(x)=0$となる。また、$s = a + ik$とおいたので、${\mathrm Re} s = a$である。ラプラス変換において、$s$は一般に任意の複素数であるが、その実部は十分に(ラプラス変換が収束するように)選ばれなければならない。

### 非同次方程式とたたみ込み積分

ラプラス変換は、線形非同次方程式を解くのに威力を発揮する(以下線形を略す)。非同次方程式とは、次のような形の微分方程式である。

$$
  u''(x) + u(x) = f(x) 
$$

まず、$f(x)=\delta(x)$と置いた方程式を

$$
  v''(x) + v(x) = \delta(x)
$$

と書こう。この解$v(x)$が得られたとすると、$u$を$v$で表すことができる。まず、方程式全体をラプラス変換することで、

$$
  {\mathcal L}[v] = \frac{1}{s^2+1} 
$$

であることが分かる。
また、式(\ref{eq_laplace_combo1})をラプラス変換すれば、

$$
  {\mathcal L}[u] = \frac{{\mathcal L}[f]}{s^2+1}
$$

である。式(\ref{eq_laplace_combo2})と式(\ref{eq_laplace_combo3})を見比べれば、

$$
  {\mathcal L}[u] = {\mathcal L}[v] {\mathcal L}[f]
$$

たたみ込み積分のラプラス変換の性質から
${\mathcal L}[v] {\mathcal L}[f] = {\mathcal L}[v*f]$
であるから、

$$
  u(x) = \int_0^{x} v(x-y)f(x)  \mathrm{d} y
$$

と$u(x)$を$v(x)$で表すことができた。

すなわち、{\bf 同次方程式を解くことができれば、一般の非同次方程式の解を得ることができる}。

デルタ関数とたたみ込み積分には物理的に重要な関係がある。過渡的な現象にはたたみ込み積分が現れることが多い。ある時刻$t=0$にデルタ関数的な刺激を与えたとき、その出力(応答)が時刻$t$で$w(t)$となるような系を考える。たとえば、LCR回路に瞬間的に電圧をかけたり、ぴんと張った弦を弾いたりすると、系はしばらく振動して、やがて落ち着いていくだろう。このような応答を **インパルス応答** と呼び、工学では特に重要な概念である。

デルタ関数に対する応答$w(t)$を用いて、任意の入力$f(x)$に対する出力$h(t)$は

$$
  h(t) = \int_0^t w(t-s) f(s) \mathrm{d} s
$$

とたたみ込み積分の形で書くことができる。この式は、時刻$s$での入力$f(s)$が、重み$w(t-s)$で時刻$t$での出力$h(t)$に影響を与えているという意味を持っている。
