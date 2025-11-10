#include <cstdio>
#include <cstddef>

template <class L, class Op, class R>
class Expr
{
  const L& l_;
  const R& r_;

public:
  explicit Expr(const L& l, const R& r)
    : l_(l), r_(r) {}

  int operator [] (size_t i) const
  {
    return Op::apply(l_[i], r_[i]);
  }
};

#define IMPLEMENT_OPERATION_CLASS(Name, Op)	\
class Name					\
{						\
public:						\
  static int apply(int l, int r)		\
  {						\
    return l Op r;				\
  }						\
};

IMPLEMENT_OPERATION_CLASS(Add, +)
IMPLEMENT_OPERATION_CLASS(Sub, -)
IMPLEMENT_OPERATION_CLASS(Mult, *)
IMPLEMENT_OPERATION_CLASS(Div, /)

template <class T>
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
      values_[i] = x + static_cast<int>(i);
    }
  }
  
  void show()
  {
    for (size_t i = 0; i < N; ++i) {
      std::printf("%d ", values_[i]);
    }
    std::puts("");
  }
  
  T& operator [] (size_t i)
  {
    return values_[i];
  }
  
  T operator [] (size_t i) const
  {
    return values_[i];
  }
  
private:
  T values_[N];
};

#define IMPLEMENT_OPERATOR(Name, Op)				\
template <class L, class R>					\
Expr<L, Name, R> operator Op (const L& lhs, const R& rhs)	\
{								\
  return Expr<L, Name, R>(lhs, rhs);				\
}

IMPLEMENT_OPERATOR(Add, +)
IMPLEMENT_OPERATOR(Sub, -)
IMPLEMENT_OPERATOR(Mult, *)
IMPLEMENT_OPERATOR(Div, /)

void sub1()
{
  Vector<int> x, y, z, a;
  x.set(10);
  y.set(20);
  z.set(30);

  a = x * y + z;
  a.show();

  Vector<int> b;
  b = a * x - y;
  b.show();

  Vector<int> c;
  c = (b * x) / z;
  c.show();
}
