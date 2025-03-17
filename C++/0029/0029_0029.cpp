#include <iostream>
#include <cstddef>
#include <cmath>

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
    if (std::fabs(values_[0] - (-0.91271)) > 0.005) { return false; }
    if (std::fabs(values_[1] - 0.08729)    > 0.005) { return false; }
    if (std::fabs(values_[2] - 1.08729)    > 0.005) { return false; }
    if (std::fabs(values_[3] - 2.08729)    > 0.005) { return false; }
    if (std::fabs(values_[4] - 3.08729)    > 0.005) { return false; }

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
Sub<L, R> operator - (const L& lhs, const R& rhs)
{
  return Sub<L, R>(lhs, rhs);
}

int main()
{
  vector x, y, z, t;
  x.set(1.25101);
  y.set(5.30193);
  z.set(-3.13821);

  t = x - y - z;
  if (t.check()) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }
  
  return 0;
}
