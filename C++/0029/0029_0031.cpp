#include <iostream>
#include <cstddef>
#include <cmath>

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
  
  bool check()
  {
    if (std::fabs(values_[0] - (-1.3203))    > 0.05)   { return false; }
    if (std::fabs(values_[1] - 0.0868919)    > 0.0005) { return false; }
    if (std::fabs(values_[2] - (-0.0858437)) > 0.0005) { return false; }
    if (std::fabs(values_[3] - (-0.105607))  > 0.005)  { return false; }
    if (std::fabs(values_[4] - (-0.104138))  > 0.005)  { return false; }

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
Div<L, R> operator / (const L& lhs, const R& rhs)
{
  return Div<L, R>(lhs, rhs);
}

int main()
{
  vector x, y, z, t;
  x.set(1.25101);
  y.set(0.30193);
  z.set(-3.13821);

  t = (x / y) / z;
  if (t.check()) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }
  
  return 0;
}
