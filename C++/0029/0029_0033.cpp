#include <iostream>
#include <cstddef>
#include <cmath>

template <class L, class Op, class R>
class expression
{
  const L& l_;
  const R& r_;

public:
  explicit expression(const L& l, const R& r)
    : l_(l), r_(r) {}

  double operator [] (size_t i) const
  {
    return Op::apply(l_[i], r_[i]);
  }
};

class Add
{
public:
  static double apply(double l, double r)
  {
    return l + r;
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
      values_[i] = static_cast<double>(x - 0.0123 * i);
    }
  }
  
  void print()
  {
    for (size_t i = 0; i < N; ++i) {
      std::cout << values_[i] << std::endl;
    }
  }

  bool check()
  {
    if (std::fabs(values_[0] - 0.524907) > 0.0005) { return false; }
    if (std::fabs(values_[1] - 0.488007) > 0.0005) { return false; }
    if (std::fabs(values_[2] - 0.451107) > 0.0005) { return false; }
    if (std::fabs(values_[3] - 0.414207) > 0.0005) { return false; }
    if (std::fabs(values_[4] - 0.377307) > 0.0005) { return false; }

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
expression<L, Add, R> operator + (const L& lhs, const R& rhs)
{
  return expression<L, Add, R>(lhs, rhs);
}

int main()
{
  vector x, y, z, a;
  x.set(1.89301);
  y.set(-2.28102);
  z.set(0.912917);

  a = x + y + z;
  if (a.check()) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
