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

int main()
{
  vector x, y, z, t;
  x.set(1.9281);
  y.set(0.18311);
  z.set(-1.3892);

  t = x + y + z;
  if (abs(t[0] - 0.72201) > 0.005) {
    std::cout << "NG1" << std::endl;
  }
  else if (abs(t[1] - (-2.27799)) > 0.005) {
    std::cout << "NG2" << std::endl;
  }
  else if (abs(t[2] - (-5.27799)) > 0.005) {
    std::cout << "NG3" << std::endl;
  }
  else if (abs(t[3] - (-8.27799)) > 0.005) {
    std::cout << "NG4" << std::endl;
  }
  else if (abs(t[4] - (-11.278)) > 0.5) {
    std::cout << "NG5" << std::endl;
  }
  else {
    std::cout << "OK" << std::endl;
  }
  
  return 0;
}
