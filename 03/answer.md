# 第三回 基底と固有値問題

## 目的

ベクトル空間においても、関数空間においても、内積を定義すれば線形空間として統一的に理解できることを学ぶ。特に、直交基底による展開という概念に慣れる。

## 解答

### 10. (1)

固有値を$\lambda$とすると、特性方程式は

$$
  \lambda^2 - 2 \lambda -3 = 0
$$

である。したがって、$\lambda = -1,3$を得る。対応する規格化された固有ベクトルは、それぞれ

$$
  \vec{e}_1 =
  \frac{1}{\sqrt{2}}
  \left(
  \begin{array}{c}
      1 \\ 1
    \end{array}
  \right)
  ,
  \vec{e}_2 =
  \frac{1}{\sqrt{2}}
  \left(
  \begin{array}{c}
      1 \\ -1
    \end{array}
  \right)
$$

である。この二つが直交していることは、内積が$0$であることから明らかである。したがって、この二つのベクトルは正規直交基底である。

### 10. (2)

$\lambda_1 = -1$、$\lambda_2 = 3$とし、
対応する固有ベクトルをそれぞれ$\vec{e}_1$、$\vec{e}_2$としよう。あるベクトル$\vec{a}$が

$$
  \vec{a} = c_1 \vec{e}_1 +c_2 \vec{e}_2
$$

と展開できたとすると、$\vec{e}_i$の正規直交性から、

$$
  c_i = \vec{e}_i \cdot \vec{a}
$$

であるから、

$$
\begin{aligned}
  c_1 &= \frac{7}{\sqrt{2}}\\
  c_2 &= -\frac{1}{\sqrt{2}}
\end{aligned}
$$

と求まる。

### 11. (1)

$V(x)=0$であるから、単に微分方程式

$$
  -\frac{\hbar^2}{2m} \frac{\mathrm{d}^2}{\mathrm{d} x^2} \psi = E \psi
$$

を解けばよい。$\alpha = \sqrt{2mE}/\hbar$とすれば、

$$
  \psi(x) = A \mathrm{e}^{i \alpha x} + B \mathrm{e}^{- i \alpha x}
$$

が一般解である。$C_1 = A+B$,$C_2 = i(A-B)$と置きなおすと、

$$
  \psi(x) = C_1 \cos{\alpha x} + C_2 \sin{\alpha x}
$$

### 11. (2)

「$-L/2<  x < L/2$の範囲で自由に運動する」とは、
$-L/2<  x < L/2$の範囲では$V(x)=0$であり、
両端において$\psi(-L/2) = \psi(L/2) = 0$ということである。
この条件から前問の$C_1$、$C_2$、$E$を決めればよい。

$\psi(L/2) = 0$より、

$$
  C_1 \cos{(\alpha L/2)} + C_2 \sin{(\alpha L/2)} = 0
$$


$\psi(-L/2) = 0$より、

$$
  C_1 \cos{(-\alpha L/2)} + C_2 \sin{(-\alpha L/2)} = 0
$$

$\cos(-\theta) = \cos \theta$、$\sin(-\theta) = -\sin \theta$に注意して、先ほどの二式の和と差を取ると、

$$
  \left\{
  \begin{array}{c}
    C_1 \cos{(\alpha L/2)} = 0 \\
    C_2 \sin{(\alpha L/2)} = 0
  \end{array}
  \right.
$$

$C_1$と$C_2$が同時に$0$となる解には興味が無いので、
$\cos{\alpha L/2} = 0$ かつ $C_2=0$、もしくは$\sin{\alpha L/2} = 0$ かつ $C_1=0$ である。
したがって、

$$
\begin{aligned}
  \frac{L \alpha }{2} &= \frac{n\pi}{2} \qquad (n = 1,2,\cdots)\\
  \frac{L \sqrt{2mE}}{2\hbar} &= \frac{n\pi}{2} \\
  E &= \frac{n^2 \hbar^2 \pi^2}{2mL^2}
\end{aligned}
$$

すなわち、エネルギーは離散的な値をとる。
さて、規格化条件から$(\psi,\psi) = 1$でなくてはならない。したがって、

$$
\begin{aligned}
  (\psi,\psi) &= \int_{-L/2}^{L/2} \!\! \mathrm{d} x \psi^2(x) \\
  &=  C^2 \int_{-L/2}^{L/2} \!\! \mathrm{d} x \cos^2{\alpha x} \\
  &= C^2 \int_{-L/2}^{L/2} \!\! \mathrm{d} x \frac{1+\cos 2\alpha x}{2} \\
  &= C^2 \left[ \frac{x}{2} +  \frac{\sin 2 \alpha x}{4 \alpha} \right]_{-L/2}^{L/2} \\
  &= \frac{C^2 L}{2} \\
  &= 1
\end{aligned}
$$

したがって、$C = \sqrt{2/L}$である。$\sin$の場合も半角公式の符号が逆になるだけで同様である。

以上をまとめると、

$$
  E = \frac{n^2 \hbar^2 \pi^2}{2mL^2} \quad , \quad
  \psi(x) =
  \left\{
  \begin{array}{cc}
    \sqrt{\frac{2}{L}} \cos (\alpha x) & \quad n = 1,3,5,\cdots \\
    \sqrt{\frac{2}{L}} \sin (\alpha x) & \quad n = 2,4,6,\cdots
  \end{array}
  \right.
$$

ただし、$\alpha \equiv \sqrt{2mE}/\hbar$である。

### 11. (3)

前問より、波動関数は自然数$n$により区別される。エネルギー順位を下から数えて$n$番目の波動関数を$\psi_n$と表そう。異なるエネルギー固有値に対応する波動関数が直交するとは、

$$
  (\psi_i,\psi_j) = \delta_{ij}
$$

が成り立つことであり、これを示せばよい。

まず、$n$が奇数の時には$\psi(x)$は偶関数、$n$が偶数の時には奇関数となるから、$n$の偶奇が異なる波動関数の内積は$0$である(偶関数と奇関数を掛け算すると奇関数となり、奇関数は原点に対して対称な範囲で積分すると$0$となるから)。そこで、$n$が両方偶数、奇数の場合を考えればよい。

まず、$n$が両方奇数の場合、波動関数は

$$
  \psi_n = \sqrt{\frac{2}{L}} \cos \alpha_n x
$$

とかける($\alpha_n = n \pi/L$)。まず、$i \neq j$の時には、三角関数の和積の公式から、

$$
\begin{aligned}
  (\psi_i,\psi_j)&= \frac{2}{L} \int_{-L/2}^{L/2} \!\!\! \mathrm{d} x  \cos{(\alpha_i x)}  \cos{(\alpha_j x)}  \\
  &= \frac{1}{L} \int_{-L/2}^{L/2} \!\!\! \mathrm{d} x \left( \cos{((\alpha_i+\alpha_j) x)}  + \cos{((\alpha_i-\alpha_j) x)} \right)\\
  &= 0
\end{aligned}
$$

次に、$i = j$の時には、三角関数の半角の公式から、

$$
\begin{aligned}
  (\psi_i,\psi_i)&= \frac{2}{L} \int_{-L/2}^{L/2} \!\!\! \mathrm{d} x  \cos^2{(\alpha_i x)}  \\
  &= \frac{1}{L} \int_{-L/2}^{L/2} \!\!\! \mathrm{d} x \left(
  1 +  \cos{(2\alpha_i x)}
  \right) \\
  &= 1
\end{aligned}
$$

$n$が両方偶数の場合も同様である。以上から、$(\psi_i,\psi_j) = \delta_{ij}$が示された。

### 12. (1)

微分方程式をあらわに書けば、

$$
  -\frac{\hbar^2}{2m} \frac{\mathrm{d}^2}{\mathrm{d} x^2} \psi  + \frac{m \omega^2 x^2}{2} \psi = E \psi
$$

となる。計算を始める前に、$a$と$E$は$\psi$が解である条件から、$N_0$は規格化条件から求まるということに気がついておきたい。

$$
  \frac{\mathrm{d}^2}{\mathrm{d} x^2} \psi_0 = (a^4x^2-a^2) \psi_0
$$

であるから、これを微分方程式に代入すると、

$$
  -\frac{\hbar^2}{2m} (a^4 x^2 -a^2)  + \frac{m \omega^2 x^2}{2} - E = 0
$$

$x$について整理すると、

$$
  \left( -\frac{\hbar^2 a^4}{2m}  + \frac{m \omega^2 }{2} \right)x^2 +
  \left( \frac{\hbar^2a^2}{2m} -E \right) = 0
$$

を得る。これが$x$に関して恒等式でなくてはならないから、

$$
\begin{aligned}
  a &= \sqrt{\frac{m\omega}{\hbar}} \\
  E &= \frac{1}{2} \hbar \omega
\end{aligned}
$$

と求まる。振幅$N_0$は、規格化条件$(\psi,\psi)=1$、すなわち

$$
  N_0^2 \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x  \exp(-a^2 x^2) = 1
$$

より、

$$
  N_0 = \sqrt{\frac{a}{\sqrt{\pi}}}
$$

と求まる。

### 12. (2)

$ax \rightarrow \xi$という変数変換を施すと、
$\displaystyle \frac{\mathrm{d}}{\mathrm{d} x} = a \displaystyle\frac{\mathrm{d}}{\mathrm{d} \xi}$であるから、元の微分方程式は、

$$
  -\frac{\hbar^2 a^2}{2m} \frac{\mathrm{d}^2}{\mathrm{d} \xi^2} \psi +
  \left(
  \frac{m \omega^2}{2a^2} \xi^2 -E
  \right) \psi = 0
$$

となる。ここで、$a^2 = m\omega/\hbar$であることから代入して整理すると、

$$
  - \psi'' + (\xi^2 - \frac{2E}{\hbar \omega})\psi = 0
$$

となる。この変数変換が無次元化に対応することに注意したい。$a$が距離の逆数の次元を持っている。したがって、$ax$は無次元量である。一般に物理で出てくる微分方程式は無次元化すると式が簡単になる。

$$
  \psi(\xi) = N_n H_n(\xi) \exp(-\xi^2/2)
$$

であるから、

$$
  \psi'' = N_n( H_n'' - 2\xi H_n' + (\xi^2-1) H_n) \exp(-\xi^2/2)
$$

となる。これを代入すれば、

$$
  H_n'' - 2 \xi H_n +(\lambda -1)H_n = 0
$$

となる(ただし$\lambda \equiv 2E/\hbar \omega$)。
これが$H_n$が満たすべき微分方程式である。

### 12. (3)

$\psi_0$,$\psi_2$は偶関数、$\psi_1$は奇関数であるから、$(\psi_0,\psi_1)=0$,$(\psi_1,\psi_2)=0$はすぐに分かる。したがって非自明なのは$(\psi_0,\psi_2)$の計算である。規格化定数を無視すると、

$$
\begin{aligned}
  (\psi_0,\psi_2) &= \int_{-\infty}^{\infty}\!\!\! \mathrm{d} x (4x^2-2) \mathrm{e}^{-x^2} \\
  &= \int_{-\infty}^{\infty}\!\!\! \mathrm{d} x  \left(
  -2x (\mathrm{e}^{-x^2})' - 2 \mathrm{e}^{-x^2} \right) \\
  &= \int_{-\infty}^{\infty}\!\!\! \mathrm{d} x  \left( 2\mathrm{e}^{-x^2} - 2 \mathrm{e}^{-x^2} \right)\\
  &= 0
\end{aligned}
$$

ただし、途中で部分積分を行い、$x=\pm \infty$において$x \mathrm{e}^{-x^2} = 0$を用いた。同様な計算で、$(\psi_n,\psi_n) = 1$も分かるが、計算は省略する。

## 解説

### 線形代数と固有値問題

線形偏微分方程式が、変数分離により常微分方程式に、さらに固有値問題に落ちることを見てきた。そこで線形代数の固有値問題を復習しておこう。行列$A$とベクトル$\vec{x}$について、$A \vec{x} = \lambda \vec{x}$が成り立つとき、$\vec{x}$を$A$の固有ベクトル、$\lambda$を固有値と呼ぶ。$A \vec{x} = \lambda \vec{x}$であることから、

$$
  (A - \lambda I) \vec{x} = 0
$$

である(ただし$I$は単位行列)。$\vec{x} \ne 0$のベクトルが存在するためには行列$B = A - \lambda I$の逆行列が存在してはいけない。したがって、$B$の行列式が$0$でなくてはならないことから固有値$\lambda$の満たすべき方程式は

$$
  |A - \lambda I|=0
$$

である。ただし$|\cdots|$は行列式を表す。この方程式を固有方程式、もしくは微分方程式の場合と同様に **特性方程式 (characteristic equation)** と呼ぶ。

また、行列のうち、$A=A^*$を満たすものをエルミート行列と呼ぶ。$A$の要素がすべて実数である場合、エルミート行列は実対称行列となる。エルミート行列の固有値は必ず実数である。また、相異なる固有値に属する固有ベクトル同士は直交している。物理で出てくる演算子を行列表示するとエルミート行列であることがほとんどなので、この事実は非常に重要である。

### 固有ベクトルによる展開

何か適当な空間を考える。たとえば3次元空間を考えよう。このとき、次の3つのベクトル

$$
  \vec{e}_1 =
  \left(
  \begin{array}{c}
      1 \\ 0 \\ 0
    \end{array}
  \right)
  \quad
  \vec{e}_2 =
  \left(
  \begin{array}{c}
      0 \\ 1 \\ 0
    \end{array}
  \right)
  \quad
  \vec{e}_3 =
  \left(
  \begin{array}{c}
      0 \\ 0 \\ 1
    \end{array}
  \right)
$$

は、これらの線形結合で3次元空間のすべてのベクトルを表現できる。このとき、このベクトルは「3次元空間を張る」と表現し、このベクトルを **基底 (basis)** と呼ぶ。基底の取り方は一意では無いが、独立な基底の数は決まっている(この場合は3)。基底がお互いに直交している時、特に **直交基底 (orthogonal basis)** 、さらに自分自身との内積(絶対値)が$1$であるように選ばれた基底を基底を **正規直行基底 (orthonormal basis)** と呼ぶ。

$n$次元エルミート行列$A$の規格化された固有ベクトルを$\vec{e}_i (i=1,2,\cdots,n)$とする。これらは正規直交基底となるから、任意の$n$次元ベクトル$\vec{x}$は

$$
  \vec{x} = c_1 \vec{e}_1 + c_2 \vec{e}_2 + \cdots + c_n \vec{e}_n
$$

と一意に分解することができる。両辺に左から$\vec{e}_i$をかけよう。すると正規直交性から、

$$
  \vec{e}_i \cdot \vec{e}_j = \delta_{ij}
$$

であるから、

$$
  \vec{e}_i \cdot \vec{x} = c_i
$$

である。すなわち、任意のベクトル$\vec{x}$を固有ベクトルで展開したとき、その展開係数は固有ベクトルと$\vec{x}$との内積から求めることができる。

なぜこのように固有ベクトルで展開するのか。それは$A$と$\vec{x}$との積を考える時に便利だからである。$\vec{e}_i$を固有値$\lambda_i$に対応する固有ベクトルとしよう。固有ベクトルの定義から、$A\vec{e}_i = \lambda_i \vec{e}_i$であるから、

$$
  A \vec{x} = c_1 \lambda_1 \vec{e}_1 + c_2 \lambda_2 \vec{e}_2 + \cdots + c_n \lambda_n \vec{e}_n
$$

である。行列とベクトルの掛け算を、単に$\lambda_i$というスカラー倍により計算できる。ここでは$A$は行列であったが、一般には微分や積分でも良い。本来微分などの解析的な計算が、固有関数で展開しておけば固有値の掛け算という代数的な計算をするだけとなる。

### 固有関数

今まで演算子として行列を、被演算子としてベクトルを考えてきたが、演算子として微分を、被演算子として関数を考えることもできる。演算子$\mathcal{L}$に対して、$\mathcal{L} \psi = \lambda \psi$が成り立つ場合、$\psi$を$\mathcal{L}$の固有関数、$\lambda$を固有値と呼ぶ。$\mathcal{L}$は微分演算子や代数式、その線形結合などなどである。特に物理においては、$\mathcal{L}$としてエネルギーに対応する演算子を考えることが多く、この演算子を **ハミルトニアン (Hamiltonian)** と呼び、表記を$\mathcal H$とする。この場合、固有値がエネルギーをあらわす。

$\vec{x}$と$\vec{y}$をそれぞれ$n$次元のベクトルとすると、ベクトルの内積$(\vec{x},\vec{y})$は、

$$
  (\vec{x},\vec{y}) \equiv \vec{x} \cdot \vec{y} = \sum_i^n x_i y_i
$$

と定義される。ただし$x_i$は$\vec{x}$の第$i$成分である。さらに、ベクトルの成分が複素数である場合には、

$$
  (\vec{x},\vec{y}) \equiv \bar{\vec{x}} \cdot \vec{y} = \sum_i^n \bar{x_i} y_i
$$

と定義する。ただし$\bar{x_i}$は$x_i$の複素共役である。

さて、演算子に対する固有関数を考える限り、固有関数はベクトルのように扱うことができる。ある二つの固有関数を$\psi(x),\phi(x)$としよう。値域は一般に複素数である。これらの定義域を$a < x < b$とすると、$\psi(x),\phi(x)$の内積$(\psi,\phi)$は、

$$
  (\psi,\phi) = \int_{a}^{b} \!\!\! \mathrm{d} x \psi^*(x) \phi(x)
$$

で定義される。ただし、$\psi^*(x)$は$\psi(x)$の複素共役である。これは、関数が無限次元のベクトルだと思えば理解できるであろう。

### 様々な基底

ベクトル空間において、基底となるベクトルの取り方はいろいろあった。たとえば2次元なら$(1,0),(0,1)$の二つにとっても良いし、$(1/\sqrt{2},1/\sqrt{2}),(1/\sqrt{2},-1/\sqrt{2})$としても良い。問題に応じて便利な基底を取ればよい。

同様に、関数空間においても様々な基底の取り方がある。一番単純に、基底を$1,x,x^2,x^3,\cdots$ととることを考えよう。これは$x=0$周りのテイラー展開を行ったことに対応する。ただ、これらの基底は直交していないので使いづらいことが多い。他に良く出てくる基底としては、ルジャンドル多項式(Legendre Polynomial) $P_n(x)$がある。$P_n(x)$は$n$次の多項式で、

$$
\begin{aligned}
  P_0(x) &= 1\\
  P_1(x) &= x\\
  P_2(x) &= \frac{1}{2}(3x^2-1)
\end{aligned}
$$

表される。これらの多項式は、$-1 < x < 1$の範囲で直交基底をなすことが分かる。具体的には、

$$
  (P_n,P_m) = \int_{-1}^{1} \!\!\!\mathrm{d} x P_n(x) P_m(x)= \frac{2}{2n+1} \delta_{mn}
$$

が成り立つ(計算してみよ)。他によく出てくる基底が、問題に出てくるエルミート多項式(Hermite Polynomial)である。エルミートの多項式$H_n(x)$は、

$$
\begin{aligned}
  H_0(x) &= 1\\
  H_1(x) &= 2x\\
  H_2(x) &= 4x^2-2
\end{aligned}
$$

である。これは$H_n(x) \exp(-x^2/2)$が$-\infty < x < \infty$の範囲で直交基底をなす。これらの多項式を陽に扱って計算をするのは大変であるが、それぞれがベクトルと同様に単なる基底だと思えば計算が非常に楽になる。
