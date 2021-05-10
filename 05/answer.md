# 第五回 フーリエ変換

## 目的

フーリエ変換の定義を学び、フーリエ変換により線形微分方程式が代数方程式となることを理解する。さらに、逆フーリエ変換の実行には複素積分が必要となることを理解する。

## 解答

### 16. (1)

積分の線形性より明らか。

### 16. (2)

フーリエ変換の定義より、

$$
  \hat{f}(k) = \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ikx}
$$

部分積分を用いることで、

$$
\begin{aligned}
  \hat{f}(k) &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \left( \frac{\mathrm{e}^{-ikx}}{-ik}\right)'\\
  &=
  \left[
    f(x)  \frac{\mathrm{e}^{-ikx}}{-ik}
    \right]_{-\infty}^{\infty}
  + \frac{1}{ik}\int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f'(x) \mathrm{e}^{-ikx}\\
  &= \frac{1}{ik}\int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f'(x) \mathrm{e}^{-ikx}
\end{aligned}
$$

以上より、

$$
  (ik) \hat{f}(k) = {\mathcal F}[f'(x)]
$$

以後、同様に繰り返すことで、

$$
  (ik)^n \hat{f}(k) = {\mathcal F}[f^{(n)}(x)]
$$

を得る。

### 16. (3)

$$
\begin{aligned}
  {\mathcal F}[f(x+a)] &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x+a) \mathrm{e}^{-ikx}\\
  &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ik(x-a)}\\
  &= \mathrm{e}^{ika} \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ikx}\\
  &= e^{ika} \hat{f}(k)
\end{aligned}
$$

ただし、途中で$x \rightarrow x-a$の変数変換を用いた。

### 16. (4)

フーリエ変換の定義より、

$$
  \hat{f}(k) = \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ikx}
$$

両辺を$k$で形式的に微分すると、

$$
\begin{aligned}
  \hat{f}'(k) &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x (-ix) f(x) \mathrm{e}^{-ikx}\\
  &= -i \int_{-\infty}^{\infty} \!\!\! x f(x) \mathrm{e}^{-ikx} \mathrm{d} x\\
  &= -i {\mathcal F}[x f(x)]
\end{aligned}
$$

以上から、

$$
  {\mathcal F}[x f(x)] = i \hat{f}'(k)
$$

同様に微分を繰り返せば、

$$
  {\mathcal F}[x^n f(x)] = (i)^n \hat{f}^{(n)}(k)
$$

を得る。

### 16. (5)

フーリエ変換とたたみ込み積分の定義から、

$$
\begin{aligned}
  {\mathcal F}[f*g] &= \int_{-\infty}^{\infty} \mathrm{d} x \mathrm{e}^{-ikx} \int_{-\infty}^{\infty} f(x-y)g(y)\mathrm{d} y \\
  &= \int_{-\infty}^{\infty} \mathrm{d} y \mathrm{e}^{-iky} g(y) \int_{-\infty}^{\infty} \mathrm{d} x \mathrm{e}^{-i(x-y)} f(x-y)\\
  &= {\mathcal F}[g] {\mathcal F}[f]
\end{aligned}
$$

### 17. (1)

$$
\begin{aligned}
  \hat{f}(k) &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ikx} \\
  &= \int_{-a}^{a} \!\!\! \mathrm{d} x \mathrm{e}^{-ikx} \\
  &=
  \left[
    \frac{e^{ikx}}{-ik}
    \right]_{-a}^{a}\\
  &= \frac{\mathrm{e}^{ika}-\mathrm{e}^{-ika}}{-ik}\\
  &= \frac{2\sin ka}{k}
\end{aligned}
$$

### 17. (2)

$$
\begin{aligned}
  \hat{f}(k) &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x f(x) \mathrm{e}^{-ikx} \\
  &=
  \int_{-\infty}^{0} \!\!\! \mathrm{d} x \mathrm{e}^{ax} \mathrm{e}^{-ikx}+
  \int_{0}^{\infty} \!\!\! \mathrm{d} x \mathrm{e}^{-ax} \mathrm{e}^{-ikx}\\
  &= \frac{1}{a-ik} + \frac{1}{a+ik} \\
  &= \frac{2a}{a^2+k^2}
\end{aligned}
$$

### 18. (1)

微分方程式全体をフーリエ変換すると、フーリエ変換の線形性より

$$
  (ik)^2 \hat{y} - 2 (ik) \hat{y} = {\mathcal F}[\delta(x)]
$$

さて、デルタ関数のフーリエ変換は、

$$
\begin{aligned}
  {\mathcal F}[\delta(x)] &= \int_{-\infty}^{\infty} \!\!\! \mathrm{d} x \delta(x) \mathrm{e}^{-ikx}\\
  &= 1
\end{aligned}
$$

以上より、

$$
  (ik)^2 \hat{y} - 2 (ik) \hat{y} = 1
$$

整理すると、

$$
  \hat{y}(k) = \frac{-1}{k^2+2ik}
$$

すなわち、 **フーリエ変換により線形微分方程式は代数方程式となる** 。これは後に学習するラプラス変換でも同様である。ここで得られた$\hat{y}(k)$フーリエ逆変換すれば解$y(x)$が求められるが、そのためには次の計算

$$
  y(x) = \frac{1}{2 \pi} \int_{-\infty}^{\infty}\mathrm{d} k \frac{-1}{k^2+2ik} \mathrm{e}^{ikx}
$$

を実行しなくてはならない。この積分には複素積分の知識が必要となる。

### 18. (2)

前問と同様にフーリエ変換を行うと、

$$
  (ik)^2 \hat{y} - \hat{y} = {\mathcal F}[\mathrm{e}^{-ax^2}]
$$

となる。したがって、${\mathcal F}[\mathrm{e}^{-ax^2}]$を計算しなくてはいけない。

$$
\begin{aligned}
  {\mathcal F}[\mathrm{e}^{-ax^2}] &= \int_{-\infty}^{\infty}\mathrm{d} x \mathrm{e}^{-ax^2} \mathrm{e}^{-ikx}\\
  &= \int_{-\infty}^{\infty}\mathrm{d} x \exp({-ax^2-ikx})\\
  &= \int_{-\infty}^{\infty}\mathrm{d} x \exp\left( -a \left(x+\frac{ik}{2}\right)^2 - \frac{k^2}{4a} \right)\\
  &= \exp(-{\frac{k^2}{4a}})  \int_{-\infty}^{\infty}\mathrm{d} x \exp\left( -a (x+\frac{ik}{2})^2 \right)\\
  &= \sqrt{\frac{\pi}{a}} \exp(-{\frac{k^2}{4a}})
\end{aligned}
$$

すなわち、 **ガウス分布のフーリエ変換はガウス分布となる** 。ただし、ガウス分布の広がり(分散)が逆になっていることに注意しよう。すなわち、実空間でなだらかなガウス分布は、波数空間では狭い分布となる(逆もまたしかり)。これはガウス分布だけでなく、フーリエ変換一般に言える性質である。

ちなみに、ここでフーリエ変換により微分方程式が代数方程式になったのは、元の方程式が線形だったからである。すなわち、 **非線形微分方程式をフーリエ変換しても代数方程式にはならない** 。フーリエ変換はものの見方を変えているだけであって、難しい問題は、変換しても難しいままとなるのである。

## 解説

問題で、

$$
  y''(x) - y(x) = \delta(x)
$$

の形の微分方程式を扱った。この解が求まると、一般の関数$f(x)$が含まれた微分方程式

$$
  g''(x) - g(x) = f(x)
$$

の解を$y(x)$を使って表現できる。

まず、$y(x)$のフーリエ変換を考えると、

$$
  {\mathcal F}[y] = -\frac{1}{k^2+1}
$$

また、$g(x)$のフーリエ変換は

$$
  {\mathcal F}[g] = -\frac{1}{k^2+1} {\mathcal F}[f]
$$

したがって、

$$
  {\mathcal F}[g] = {\mathcal F}[y] {\mathcal F}[f]
$$

左辺はたたみ込み積分のフーリエ変換として表現できるから、

$$
  {\mathcal F}[g] = {\mathcal F}[y*f(x)]
$$

もとに戻すと、

$$
  g(x) = \int_{-\infty}^{\infty}f(s) y(x-s)  \mathrm{d} s
$$

以上より、一般の$f(x)$を含む微分方程式の解を得た。あとはそれぞれの場合において$f(x)$を代入し、積分を実行すれば$g(x)$を得ることができる。このように、デルタ関数はたたみ込み積分と密接な関係を持つ。このことは後に学ぶラプラス変換でより明らかとなる。
