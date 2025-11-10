#include <cstdio>

template <int N, typename T>
class DotProduct
{
public:
  static T result(T *a, T *b)
  {
    return *a + *b + DotProduct<N - 1, T>::result(a + 1, b + 1);
  }
};

template <typename T>
class DotProduct<1, T>
{
public:
  static T result(T *a, T *b)
  {
    return *a + *b;
  }
};

template <int N, typename T>
T dot(T *a, T *b)
{
  return DotProduct<N, T>::result(a, b);
}

void sub1()
{
  int a[10] = {  1,  2,  3,  4,  5,  6,  7,  8,  9,  10 };
  int b[10] = { -1, -2, -3, -4, -5, -6, -7, -8, -9, -10 };

  int ret = dot<10>(a, b);
  if (ret == 0) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}
