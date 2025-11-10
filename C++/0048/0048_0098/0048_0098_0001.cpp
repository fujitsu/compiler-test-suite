#include <cstdio>
#include <cstddef>

template <class L, class R>
class Add
{
private:
  const L& l_;
  const R& r_;

public:
  explicit Add(const L& l, const R& r)
    : l_(l), r_(r) {}

  int operator [] (size_t i) const
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

  int operator [] (size_t i) const
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

  int operator [] (size_t i) const
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

  int operator [] (size_t i) const
  {
    return l_[i] / r_[i];
  }
};

class Vector
{
public:
  static const int N = 5;
  
  Vector()
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = 0;
    }
  }
  
  Vector(const Vector& rhs)
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = rhs[i];
    }
  }
  
  template <class E>
  Vector& operator = (const E& rhs)
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = rhs[i];
    }
    return *this;
  }
  
  void set(int x)
  {
    for (size_t i = 0; i < N; ++i) {
      values_[i] = x - static_cast<int>(i);
    }
  }
  
  int& operator [] (size_t i)
  {
    return values_[i];
  }
  
  int operator [] (size_t i) const
  {
    return values_[i];
  }
  
  void show()
  {
    for (size_t i = 0; i < N; ++i) {
      std::printf("%d ", values_[i]);
    }
    std::puts("");
  }

private:
  int values_[N];
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

void sub1()
{
  Vector x, y, z;
  x.set(8);
  y.set(9);
  z.set(10);

  Vector a;
  a = x + y - z;
  a.show();
  
  Vector b;
  b = a * x + y;
  b.show();

  Vector c;
  c = b * x - z;
  c.show();

  Vector d;
  d = c / x + y;
  d.show();
}
