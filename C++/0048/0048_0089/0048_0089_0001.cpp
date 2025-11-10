#include <cstdio>

template <int M>
struct B1
{
  static constexpr int cVal = B1<M - 1>::cVal + 1;
};

template <>
struct B1<0>
{
  static constexpr int cVal = 0;
};

template <int N>
struct B2
{
  static constexpr int cVal = B2<N - 1>::cVal + 2;
};

template <>
struct B2<0>
{
  static constexpr int cVal = 0;
};

template <int M, int N>
struct B
{
  static constexpr int cVal = B1<M>::cVal + B2<N>::cVal;
};

template <int N = B<3, 4>::cVal>
static constexpr int getVal()
{
  return N;
}

void sub1()
{
  int ret = getVal();
  if (ret == 11) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

