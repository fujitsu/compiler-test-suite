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

#define IMPLEMENT_OPERATION_CLASS(Name, Op)	\
class Name					\
{						\
public:						\
  static double apply(double l, double r)	\
  {						\
    return l Op r;				\
  }						\
};

IMPLEMENT_OPERATION_CLASS(Add, +)
IMPLEMENT_OPERATION_CLASS(Sub, -)
IMPLEMENT_OPERATION_CLASS(Mult, *)
IMPLEMENT_OPERATION_CLASS(Div, /)

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

  bool checkA()
  {
    if (std::fabs(values_[0] - (-3.40508)) > 0.005) { return false; }
    if (std::fabs(values_[1] - (-3.41245)) > 0.005) { return false; }
    if (std::fabs(values_[2] - (-3.41953)) > 0.005) { return false; }
    if (std::fabs(values_[3] - (-3.4263))  > 0.05)  { return false; }
    if (std::fabs(values_[4] - (-3.43277)) > 0.005) { return false; }

    return true;
  }
  
  bool checkB()
  {
    if (std::fabs(values_[0] - (-4.16482)) > 0.005) { return false; }
    if (std::fabs(values_[1] - (-4.12451)) > 0.005) { return false; }
    if (std::fabs(values_[2] - (-4.08346)) > 0.005) { return false; }
    if (std::fabs(values_[3] - (-4.04167)) > 0.005) { return false; }
    if (std::fabs(values_[4] - (-3.99915)) > 0.005) { return false; }

    return true;
  }

  bool checkC()
  {
    if (std::fabs(values_[0] - (-8.63611)) > 0.005) { return false; }
    if (std::fabs(values_[1] - (-8.613))   > 0.5)   { return false; }
    if (std::fabs(values_[2] - (-8.5888))  > 0.05)  { return false; }
    if (std::fabs(values_[3] - (-8.5635))  > 0.05)  { return false; }
    if (std::fabs(values_[4] - (-8.53714)) > 0.005) { return false; }

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

template <class L, class R>
expression<L, Sub, R> operator - (const L& lhs, const R& rhs)
{
  return expression<L, Sub, R>(lhs, rhs);
}

template <class L, class R>
expression<L, Mult, R> operator * (const L& lhs, const R& rhs)
{
  return expression<L, Mult, R>(lhs, rhs);
}

template <class L, class R>
expression<L, Div, R> operator / (const L& lhs, const R& rhs)
{
  return expression<L, Div, R>(lhs, rhs);
}

int main()
{
  vector x, y, z, a;
  x.set(1.89301);
  y.set(-2.28102);
  z.set(0.912917);

  a = x * y + z;
  if (!a.checkA()) {
    std::cout << "NG1" << std::endl;
  }

  vector b;
  b = a * x - y;
  if (!b.checkB()) {
    std::cout << "NG2" << std::endl;
  }

  vector c;
  c = (b * x) / z;
  if (c.checkC()) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG3" << std::endl;
  }

  return 0;
}
