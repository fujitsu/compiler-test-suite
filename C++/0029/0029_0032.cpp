#include <iostream>
#include <cstddef>
#include <cmath>

template <class L, class R>
class Add
{
private:
  const L& l_;
  const R& r_;

public:
  explicit Add(const L& l, const R& r)
    : l_(l), r_(r) {}

  double operator [] (size_t i) const
  {
    return l_[i] + r_[i];
  }
};

template <class L, class R>
class Sub
{
private:
  const L& l_;
  const R& r_;

public:
  explicit Sub(const L& l, const R& r)
    : l_(l), r_(r) {}

  double operator [] (size_t i) const
  {
    return l_[i] - r_[i];
  }
};

template <class L, class R>
class Mult
{
private:
  const L& l_;
  const R& r_;

public:
  explicit Mult(const L& l, const R& r)
    : l_(l), r_(r) {}

  double operator [] (size_t i) const
  {
    return l_[i] * r_[i];
  }
};

template <class L, class R>
class Div
{
private:
  const L& l_;
  const R& r_;

public:
  explicit Div(const L& l, const R& r)
    : l_(l), r_(r) {}

  double operator [] (size_t i) const
  {
    return l_[i] / r_[i];
  }
};

class vector
{
public:
  static const int N = 5;
  
  vector()
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = 0;
    }
  }
  
  vector(const vector& rhs)
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = rhs[i];
    }
  }
  
  template <class E>
  vector& operator = (const E& rhs)
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = rhs[i];
    }
    return *this;
  }
  
  void set(double x)
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = x - static_cast<double>(i);
    }
  }
  
  bool checkA()
  {
    if (std::fabs(values_[0] - (-0.407547)) > 0.005) { return false; }
    if (std::fabs(values_[1] - (-1.40755))  > 0.05)  { return false; }
    if (std::fabs(values_[2] - (-2.40755))  > 0.05)  { return false; }
    if (std::fabs(values_[3] - (-3.40755))  > 0.05)  { return false; }
    if (std::fabs(values_[4] - (-4.40755))  > 0.05)  { return false; }

    return true;
  }
 
  bool checkB()
  {
    if (std::fabs(values_[0] - (-1.22554))   > 0.005)  { return false; }
    if (std::fabs(values_[1] - (-1.74145))   > 0.005)  { return false; }
    if (std::fabs(values_[2] - (-0.257365))  > 0.0005) { return false; }
    if (std::fabs(values_[3] - 3.22672)      > 0.005)  { return false; }
    if (std::fabs(values_[4] - 8.71081)      > 0.005)  { return false; }

    return true;
  }

  bool checkC()
  {
    if (std::fabs(values_[0] - (-1.61355)) > 0.005)  { return false; }
    if (std::fabs(values_[1] - 0.651487)   > 0.0005) { return false; }
    if (std::fabs(values_[2] - 1.79525)    > 0.005)  { return false; }
    if (std::fabs(values_[3] - (-4.18224)) > 0.005)  { return false; }
    if (std::fabs(values_[4] - (-23.281))  > 0.5)    { return false; }

    return true;
  }

  bool checkD()
  {
    if (std::fabs(values_[0] - (-2.59648)) > 0.005) { return false; }
    if (std::fabs(values_[1] - (-10.3605)) > 0.05)  { return false; }
    if (std::fabs(values_[2] - (-4.5168))  > 0.05)  { return false; }
    if (std::fabs(values_[3] - (-1.83515)) > 0.005) { return false; }
    if (std::fabs(values_[4] - 2.71807)    > 0.005) { return false; }

    return true;
  }

  double& operator [] (size_t i)
  {
    return values_[i];
  }
  
  double operator [] (size_t i) const
  {
    return values_[i];
  }
  
private:
  double values_[N];
};

template <class L, class R>
Add<L, R> operator + (const L& lhs, const R& rhs)
{
  return Add<L, R>(lhs, rhs);
}

template <class L, class R>
Sub<L, R> operator - (const L& lhs, const R& rhs)
{
  return Sub<L, R>(lhs, rhs);
}

template <class L, class R>
Mult<L, R> operator * (const L& lhs, const R& rhs)
{
  return Mult<L, R>(lhs, rhs);
}

template <class L, class R>
Div<L, R> operator / (const L& lhs, const R& rhs)
{
  return Div<L, R>(lhs, rhs);
}

int main()
{
  vector x, y, z;
  x.set(0.9234567);
  y.set(-0.8491931);
  z.set(0.4818102);

  vector a;
  a = x + y - z;
  if (!a.checkA()) {
    std::cout << "NG1" << std::endl;
  }
  
  vector b;
  b = a * x + y;
  if (!b.checkB()) {
    std::cout << "NG2" << std::endl;
  }

  vector c;
  c = b * x - z;
  if (!c.checkC()) {
    std::cout << "NG3" << std::endl;
  }

  vector d;
  d = c / x + y;
  if (d.checkD()) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG4" << std::endl;
  }

  return 0;
}
