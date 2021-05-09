# 第四回 フーリエ級数展開と超関数

## 目的

フーリエ級数展開が、直交基底による展開の特別な場合になっていることを理解する。
また、超関数が内積によって定義されることを学ぶ。

## 解答

### 13. (1)

絶対値がついているので$x=0$で微分不連続だが、それでもすぐに偶関数だから$\cos$の成分しか出てこないということに気が付いて欲しい。したがって$b_n = 0$である。

さて、

$$
  a_n = \frac{1}{ \pi} \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x f(x) \sin nx
$$

であるから、

$$
  a_0 = \frac{2}{\pi} \int_0^{\pi} x \mathrm{d} x  = \pi
$$

ただし、$f(x)$の偶関数性を用いた。$n\neq 0$の場合は、部分積分を用いれば

$$
\begin{aligned}
  a_n &= \frac{2}{\pi} \int_0^{\pi} x \cos nx \mathrm{d} x \\
  &= \frac{2}{\pi} \int_0^{\pi} x (\frac{1}{n}\sin nx)' \mathrm{d} x  \\
  &= \frac{2}{\pi} \left[ \frac{x}{n} \sin nx \right]_0^{\pi}
  - \frac{2}{n\pi} \int_0^{\pi} \sin nx \\
  &= \frac{2}{n^2\pi} \left[\cos nx \right]_0^{\pi}\\
  &= \frac{2 ((-1)^n -1)}{n^2\pi}
\end{aligned}
$$

以上から、

$$
\begin{aligned}
  f(x) &= \frac{\pi}{2} + \frac{2}{\pi} \sum_{n=1}^\infty \frac{((-1)^n -1)}{n^2} \cos nx \\
  &=
  \frac{\pi}{2} - \frac{4}{\pi} \sum_{m=0}^\infty \frac{\cos (2m+1)x}{(2m+1)^2} \\
\end{aligned}
$$

$x=0$を代入すると、右辺、左辺共に$0$となり、一致する。

### 13. (2)

前問と同様に奇関数であるから、$\sin$の成分しか出てこない。したがって$a_n=0$である。

$$
\begin{aligned}
  b_n &= \frac{2}{\pi} \int_0^{\pi} \mathrm{d} x  \sin nx\\
  &= \frac{2}{\pi}  \left[ \frac{- \cos nx}{n}  \right]_0^\pi\\
  &= \frac{2}{\pi} \frac{1 - (-1)^n}{n}
\end{aligned}
$$

以上から、

$$
  f(x) = \frac{2}{\pi} \sum_{n=1}^{\infty} \frac{1 - (-1)^n}{n} \sin nx
$$

さて、定義から$f(0) = 1$であるが、右辺の級数に$x=0$を代入すると$0$になってしまい、一致しない。一般に、$f(x)$がある点$x_0$で不連続である場合には、フーリエ級数は

$$
  \lim_{\varepsilon \rightarrow 0} \frac{f(x_0 + |\varepsilon|) + f(x_0 - |\varepsilon|) }{2}
$$

すなわち、その不連続点における上側からの極限値と下側からの極限値の平均値となる。したがって、フーリエ級数展開、

$$
  f(x) = \frac{a_0}{2} + \sum_{n=1}^\infty (a_n \cos nx + b_n \sin nx)
$$

は、厳密には不連続点で等号が成立しない。

### 14. (1)

複素フーリエ級数の和を、$n=0$と$n\le -1$、$n \ge 1$に分けることを考える。

$$
\begin{aligned}
  f(x) &= \sum_{n=-\infty}^{\infty} c_n \exp{(inx)}\\
  &= \sum_{n=-\infty}^{\infty} c_n (\cos nx + i \sin nx)\\
  &= c_0 + \sum_{n=1}^{\infty} c_n (\cos nx + i \sin nx)
  + \sum_{n=-1}^{-\infty} c_n (\cos nx + i \sin nx)\\
  &= c_0 + \sum_{n=1}^{\infty} c_n (\cos nx + i \sin nx)
  + \sum_{n=1}^{\infty} c_{-n} (\cos nx - i \sin nx)\\
  &= c_0 + \sum_{n=1}^{\infty} \left( (c_n+c_{-n}) \cos nx + i(c_n-c_{-n}) \sin nx  \right)
\end{aligned}
$$

一方、フーリエ級数展開は、

$$
  f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos nx + b_n \sin nx  \right)
$$

であるから、係数を比較して、

$$
\begin{aligned}
  a_0 &= 2 c_0 \\
  a_n &= c_n + c_{-n} \\
  b_n &= c_n - c_{-n}
\end{aligned}
$$

より、$c_n$、$c_{-n}$について逆に解けば良い。

### 14. (2)

$$
\begin{aligned}
  c_n &= \frac{1}{2\pi} \int_{-\pi}^{\pi} \mathrm{d} x \mathrm{e}^x \mathrm{e}^{-inx} \\
  &= \frac{1}{2\pi} \int_{-\pi}^{\pi} \mathrm{d} x \mathrm{e}^{(1-in)x} \\
  &= \frac{1}{2\pi} \left[ \frac{\mathrm{e}^{(1-in)x}}{1-in}  \right]_{-\pi}^{\pi}\\
  &= \frac{1}{2\pi} \left( \frac{\mathrm{e}^{(1-in)\pi} - \mathrm{e}^{(1-in)(-\pi) }}{1-in}  \right)\\
  &= \frac{1}{2\pi} \left( \frac{ \mathrm{e}^\pi \mathrm{e}^{-in\pi} - \mathrm{e}^{-\pi} \mathrm{e}^{in\pi} }{1-in}  \right)\\
  &= \frac{(-1)^n}{2\pi} \left( \frac{\mathrm{e}^{\pi} - \mathrm{e}^{-\pi} }{1-in}  \right)\\
  &= \frac{(-1)^n}{\pi} \frac{\sinh \pi }{1-in}
\end{aligned}
$$

以上から、

$$
  f(x) = \sum_{n=-\infty}^{\infty} \frac{(-1)^n}{\pi} \frac{\sinh \pi }{1-in} \mathrm{e}^{inx}
$$

さて、$x=0$を代入すると、

$$
\begin{aligned}
  f(0) &= \sum_{n=-\infty}^{\infty} \frac{(-1)^n}{\pi} \frac{\sinh \pi }{1-in} \mathrm{e}^{inx}\\
  &= \sum_{n=-\infty}^{\infty} \frac{(-1)^n}{\pi} \frac{(1+in) \sinh \pi }{1+n^2}\\
  &= \frac{\sinh \pi}{\pi}\left( 1+  \sum_{n=1}^{\infty}\frac{(-1)^n(1+in)}{1+n^2}+\frac{(-1)^{-n}(1-in)}{1+n^2}  \right)\\
  &= \frac{\sinh \pi}{\pi}\left( 1+  2 \sum_{n=1}^{\infty} \frac{(-1)^n}{1+n^2} \right)
\end{aligned}
$$

さて、もともと$f(x)=\mathrm{e}^x$であったから、$f(0)=1$である。
以上から、

$$
  \sum_{n=1}^{\infty} \frac{(-1)^n}{1+n^2} = \frac{1}{2} \left( \frac{\pi}{\sinh \pi} -1 \right)
$$


### 15. (1)

よくやる間違いは、$x = 0$なら$x \delta(x) = 0$、$x \neq 0$なら$\delta(x) = 0$だから$x \delta(x) = 0$、以上で証明終わり、とするものであるが、デルタ関数は内積でしか定義できないので、等価性を示す場合も内積の形で示す必要がある。

すなわち、内積ができる量$A$、$B$、$C$があったとき、任意の$C$について

$$
  (A, C) = (B, C)
$$

である場合に、内積の一意性から$A=B$を言うことができる。この方針で$x \delta(x)$と$f(x)$の内積を計算してみよう。

$$
\begin{aligned}
  (x \delta(x), f(x) ) &= \int_{-\infty}^\infty \!\!\! x \delta(x) f(x) \mathrm{d} x \\
  &= \int_{-\infty}^\infty \!\!\! \delta(x) g(x) \mathrm{d} x \\
  &= g(0) \\
  &= 0 \\
  &= (0, f(x))
\end{aligned}
$$

ただし途中で$g(x) \equiv x f(x)$とおいた。
以上から$x \delta(x)$はどのような(性質の良い)関数と内積をとっても$0$となる、すなわち、

$$
  (x \delta(x), f(x)) = (0, f(x))
$$

であるから、$x \delta(x) = 0$と言う事ができる。

$\delta(ax) = \delta(x)/|a|$の証明は以下の通り。
$a > 0 $のとき、

$$
\begin{aligned}
  (\delta(ax),f(x)) &= \int_{-\infty}^\infty \!\!\! \delta(ax) f(x) \mathrm{d} x \\
  &= \int_{-\infty}^\infty \!\!\! \delta(x) f(x/a) a \mathrm{d} x\\
  &= a f(0) \\
  &= a \int_{-\infty}^\infty \!\!\! \delta(x) f(x) \mathrm{d} x\\
  &= (a \delta(x), f(x))
\end{aligned}
$$

以上で、$a\delta(x) = \delta(ax)$が証明された。$a<0$の場合は、積分区間が逆になることから負符号が出て、あわせて$\delta(ax) = \delta(x)/|a|$が結論される。

### 15. (2)

$$
\begin{aligned}
  \left(  \frac{\mathrm{d} \theta(x)}{\mathrm{d} x} ,f(x) \right)
  &= \int_{-\infty}^\infty \!\!\! \mathrm{d} x \frac{\mathrm{d} \theta(x)}{\mathrm{d} x} f(x) \\
  &=
  \left[
    \theta(x) f(x)
    \right]_{-\infty}^{\infty}
  - \int_{-\infty}^\infty \!\!\! \mathrm{d} x \theta(x) f'(x)\\
  &= - \int_{0}^\infty \!\!\! \mathrm{d} xf'(x)\\
  &= - f(\infty) + f(0)\\
  &= \int_{-\infty}^\infty \!\!\! \mathrm{d} x \delta(x) f(x)\\
  &= (\delta(x), f(x))
\end{aligned}
$$

以上から、

$$
  \frac{\mathrm{d} \theta(x)}{\mathrm{d} x} = \delta(x)
$$
が証明された。

### 15. (3)

デルタ関数の定義から、

$$
\begin{aligned}
  c_n &= \frac{1}{2\pi} \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \delta(x) \mathrm{e}^{-inx} \\
  &= \frac{1}{2\pi}
\end{aligned}
$$

以上より形式的に、

$$
  \delta(x) = \frac{1}{2\pi} \sum_{n=-\infty}^{\infty} \mathrm{e}^{inx}
$$

である。これはデルタ関数の級数表示である。デルタ関数にはいくつもの表示方法があるが、
それぞれ等価であるから計算に対して便利なものを場合に応じて使い分ければよい。

## 解説

### フーリエ級数展開

$(-\pi \le x < \pi)$で定義されている関数$f(x)$を、
$$
  f(x) = \frac{a_0}{2} + \sum_{n=1}^\infty (a_n \cos nx + b_n \sin nx)
$$
の形に展開することをフーリエ級数展開という。
また、$a_n, b_n$をフーリエ係数と呼ぶ。

三角関数の直交性、

$$
\begin{aligned}
  \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \cos nx \cos mx &= \pi \delta_{nm}
\end{aligned}
$$

$$
\begin{aligned}
  \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \sin nx \sin mx &= \pi \delta_{nm}
\end{aligned}
$$


$$
\begin{aligned}
  \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \sin nx \cos mx &= 0
\end{aligned}
$$

より、フーリエ係数は

$$
\begin{aligned}
  a_n = \frac{1}{ \pi} \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \cos nx f(x)
\end{aligned}
$$

$$
\begin{aligned}
  b_n = \frac{1}{ \pi} \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \sin nx f(x)
\end{aligned}
$$

で求めることができる。たまにフーリエ級数展開の定義を

$$
  f(x) = \frac{a_0}{2\sqrt{\pi}} + \frac{1}{\sqrt{\pi}}\sum_{n=1}^\infty (a_n \cos nx + b_n \sin nx)
$$

として、フーリエ係数を

$$
\begin{aligned}
  a_n = \frac{1}{ \sqrt{\pi}} \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \cos nx f(x)
\end{aligned}
$$

$$
\begin{aligned}
  b_n = \frac{1}{\sqrt{\pi}} \int_{-\pi}^{\pi} \!\!\! \mathrm{d} x \sin nx f(x)
\end{aligned}
$$

とする教科書もあるが、これは$\frac{1}{\sqrt{\pi}} \sin nx$、$\frac{1}{\sqrt{\pi}} \cos nx$が正規直交基底になるためであり、
実用上は前者がよく使われる。

### 複素フーリエ級数展開

オイラーの関係式

$$
  \mathrm{e}^{i\theta} = \cos \theta + i \sin \theta
$$

を使えば、フーリエ級数展開の$\cos$と$\sin$を同時に扱うことができる。
すなわち、$(-\pi \le x < \pi)$で定義されている関数$f(x)$を、

$$
  f(x) = \sum_{-\infty}^{\infty} c_n \exp{(inx)}
$$

という形に展開する。

ここで、係数$c_n$は複素数であり、フーリエ級数における係数
$a_n$および$b_n$との関係は次の通りである。

$$
\begin{aligned}
  \left\{
  \begin{array}{ccc}
    c_0    & = & \displaystyle\frac{a_0}{2}         \\
    c_n    & = & \displaystyle\frac{a_n - i b_n}{2} \\
    c_{-n} & = & \displaystyle\frac{a_n + i b_n}{2}
  \end{array}
  \right.
\end{aligned}
$$


複素フーリエ級数の直交性は次のように表される。

$$
  \int_{-\pi}^{\pi} \mathrm{d} x (\mathrm{e}^{imx})^* \mathrm{e}^{inx} =
  \int_{-\pi}^{\pi} \mathrm{d} x \mathrm{e}^{i(n-m)x} = 2\pi \delta_{mn}
$$

ただし$z*$は$z$の複素共役をあらわす。この直交性を用いれば、

$$
  c_n = \frac{1}{2\pi} \int_{-\pi}^{\pi} \mathrm{d} x  f(x) (\mathrm{e}^{inx})^*
  = \int_{-\pi}^{\pi} \mathrm{d} x  f(x) \mathrm{e}^{-inx}
$$

と係数を求めることができる。$\mathrm{e}^{inx}$ではなく、$\mathrm{e}^{-inx}$をかけて積分をすることに注意したい。

以上のように、フーリエ級数展開と複素フーリエ級数展開は等価である。しかし、こうやって指数関数であらわしてしまったほうが三角関数を使うより計算は便利である。なぜなら三角関数は微分や積分で$\sin$と$\cos$が入れ替わるが、指数関数は指数関数のままで、肩に乗っている値を気にするだけでよいからだ。また、複素フーリエ級数展開は、後に扱うフーリエ変換につながる。

### 超関数

次の積分で定義される関数$\delta(x)$を、ディラック(Dirac)のデルタ関数という。

$$
  \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x \delta(x) f(x) =
  \int_{-\varepsilon}^{\varepsilon} \!\!\! \mathrm{d} x \delta(x) f(x) =
  f(0)
$$

ただし$\varepsilon$は任意の正数であり、関数$f(x)$は$x = \pm \infty$で任意の$x$のべき乗よりも早く$0$に収束し、さらに何回でも微分できるとする(このような関数を「性質の良い関数」と呼ぶ)。

この積分がデルタ関数と関数$f(x)$の内積、$(\delta,f)$になっていることに注意したい。すなわち、 **デルタ関数とは、内積をとって初めて定義される関数** である。このような関数を **超関数 (generalized function)** と呼ぶ。超関数は通常の関数とは区別される。デルタ関数をはじめとする超関数の定義の仕方は一通りではなく、厳密な議論は面倒だが、とりあえずここでは「デルタ関数は関数の内積で定義される」とだけ覚えておき、後で必要になったら超関数論を学ぶと良い。

デルタ関数が内積をとって初めて意味を持つように、微分などの演算子も、演算して初めて意味を持つことに注意したい。たとえば、$\displaystyle \frac{\mathrm{d}}{\mathrm{d} x} x$という「演算子」を考える。これは演算子$\displaystyle \frac{\mathrm{d}}{\mathrm{d} x}$と$x$の積で作られている。演算子$A$、$B$の積 $AB$は、「最初に$B$を演算し、次に$A$を演算する」という意味である。したがって、たとえば関数$f(x)$に先ほどの演算子を演算すると、まず$x$をかけて、次に$x$で微分するのであるから、

$$
  \frac{\mathrm{d}}{\mathrm{d} x} (x f(x)) = f(x) + x \frac{\mathrm{d} f(x)}{\mathrm{d} x}
$$

となる。したがって、元の演算子$\displaystyle \frac{\mathrm{d}}{\mathrm{d} x} x$と、演算の順序を入れかえた$\displaystyle x \frac{\mathrm{d}}{\mathrm{d} x}$は一致しない。先ほどの結果から、

$$
  (\frac{\mathrm{d}}{\mathrm{d} x} x) f(x)  =  (1 + x \frac{\mathrm{d} }{\mathrm{d} x}) f(x)
$$

すなわち、演算子だけを見れば、

$$
  \frac{\mathrm{d}}{\mathrm{d} x} x -   x \frac{\mathrm{d} }{\mathrm{d} x} =  1
$$

という関係が成り立つ。このような関係を **交換関係 (commutation relation)** と呼び、代数学において重要な役割を果たす。一般に、演算子の積$AB$と、順序を逆にした積$BA$の差$AB-BA$を$[A,B]$とあらわす。つまり

$$
  [A,B] = AB - BA
$$

である。もし$[A,B]=0$である場合、すなわち演算子の順序を入れ替えても結果が変わらない場合、「演算子$A$と$B$は交換する」と言う。このような交換関係は、量子力学の定式化などで威力を発揮する。$A$や$B$は、たとえば先ほどの例のように微分演算子でも良いし、行列でも良い(行列も一般には交換しない)。抽象的で理解しづらかったら具体例で考えるようにしたい。特に、「演算子は何かに演算して初めて意味を持つ」ということを思い出そう。このような抽象化が代数の難しさであると同時に、代数学の強みでもある。$A$が微分であろうと積分であろうと行列であろうと、もっと他の演算子であろうと、交換関係という普遍的な代数構造を持つのである。
