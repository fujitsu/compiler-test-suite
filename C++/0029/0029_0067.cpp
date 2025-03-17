#include <iostream>
#include <cmath>

#define LEN 16

template <class L, class Op, class R>
class Expression
{
public:
  explicit Expression(const L& l, const R& r)
    : l_(l), r_(r) {}

  float operator [] (int i) const
  {
    return Op::apply(l_[i], r_[i]);
  }

private:
  const L& l_;
  const R& r_;
};

#define IMPLEMENT_OPERATION_CLASS(Name, Op)	\
class Name					\
{						\
public:						\
  static float apply(float l, float r)		\
  {						\
    return l Op r;				\
  }						\
};

IMPLEMENT_OPERATION_CLASS(Add, +)
IMPLEMENT_OPERATION_CLASS(Sub, -)
IMPLEMENT_OPERATION_CLASS(Mult, *)

#define IMPLEMENT_OPERATOR(Name, Op)				\
template <class L, class R>					\
Expression<L, Name, R> operator Op (const L& lhs, const R& rhs)	\
{								\
  return Expression<L, Name, R>(lhs, rhs);			\
}

IMPLEMENT_OPERATOR(Add, +)
IMPLEMENT_OPERATOR(Sub, -)
IMPLEMENT_OPERATOR(Mult, *)

class Array
{
public:
  Array()
  {
    array = new(std::nothrow) float[LEN];
    array[0] = 1.;
  }
  
  Array(float value , int stride)
  {
    array = new(std::nothrow) float[LEN];
    set1d(value, stride);
  }

  ~Array()
  {
    delete [] array;
  }

  template <class E>
  Array& operator = (const E& rhs)
  {
    for (int i = 0; i < LEN; ++i) {
      array[i] = rhs[i];
    }
    return *this;
  }

  int set1d(float value, int stride)
  {
    if (stride == -1) {
      for (int i = 0; i < LEN; ++i) {
	array[i] = 1. / static_cast<float>(i + 1);
      }
    }
    else if (stride == -2) {
      for (int i = 0; i < LEN; ++i) {
	array[i] = 1. / static_cast<float>((i + 1) * (i + 1));
      }
    }
    else {
      for (int i = 0; i < LEN; i += stride) {
	array[i] = value;
      }
    }

  return 0;
  }

  bool checkA()
  {
    for (int i = 0; i < LEN; ++i) {
      if (array[i] != 0.) {
	return false;
      }
    }
    
    return true;
  }

  float operator [] (int i)
  {
    return array[i];
  }

  float operator [] (int i) const
  {
    return array[i];
  }

private:
  float *array;
};

int main()
{
  float zero = 0.;
  float one = 1.;
  int unit = 1;

  Array a(zero, unit), b(one, unit), c(one, unit), e;

  a = a + b * c;
  a = a - b * c;

  if (a.checkA()) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
