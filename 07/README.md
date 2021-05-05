# 第七回 留数定理とその応用

## 1.

関数$f(z)$は領域$D$で正則であり、$C$は領域$D$内の単一閉曲線であるとする。このとき、$C$内の点$a$について、以下の公式が成り立つ(コーシーの積分公式)。

$$
f(a) = \frac{1}{2\pi i} \int_C \frac{f(z)}{z-a} \mathrm{d} z
$$

これを用いて次の積分の値を求めよ。

### (1)

$$
\int_{|z|=2} \frac{\mathrm{e}^z}{z+1} \mathrm{d} z 
$$

原点を中心とし、半径$2$の円を正の向きに一周する積分路を表す。以下同様。

### (2)

$$
\displaystyle \int_{|z|=2}  \frac{z}{z^2+1} \mathrm{d} z
$$

## 2.

関数$f(z)$は領域$D$で正則であり、
$C$は領域$D$内の単一閉曲線であるとする。
このとき、$C$内の点$a$について、以下の公式が成り立つ(これもコーシーの積分公式)。

$$
f^{n}(a) = \frac{n!}{2\pi i} \int_C \frac{f(z)}{(z-a)^{n+1}} \mathrm{d} z
$$

これを用いて次の積分の値を求めよ。

### (1)

$$
 \displaystyle \int_{|z|=3} \frac{\mathrm{e}^{3z}}{(z-2)^2} \mathrm{d} z 
$$

### (2)

$$
\displaystyle  \int_{|z|=1}  \frac{1}{z^2(z-3)} \mathrm{d} z
$$

## 3.

関数$f(z)$が、$z=a$を孤立特異点として持つとき、

$$
\mathrm{Res}f(a) \equiv \frac{1}{2\pi i} \int_C f(z) \mathrm{d} z
$$

を$f(z)$の$a$における **留数 (residue)** と呼ぶ(ただし$C$は$a$の近傍を正の方向に一周する積分路とする)。以下の関数のすべての特異点における留数を求めよ。

### (1)

$$
\displaystyle \frac{\mathrm{e}^{iz}}{z^2+a^2} \qquad (a > 0)
$$

### (2)

$$
\displaystyle \frac{1}{z^4+1}
$$

## 4.

次の実積分の値を、複素積分を利用して求めよ。

### (1)

$$
\displaystyle \int_{0}^{\infty} \frac{1}{x^4+1} \mathrm{d} x
$$

### (2)

$$
\displaystyle \int_{-\infty}^{\infty} \frac{\cos k x}{x^2+1} \mathrm{d} x \qquad (k>0)
$$