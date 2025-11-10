#include <cstdio>

template <int N>
struct ConstVal
{
  static constexpr int cVal = ConstVal<N - 1>::cVal + N;
};

template <>
struct ConstVal<0>
{
  static constexpr int cVal = 0;
};

template <int M = ConstVal<3>::cVal>
static constexpr int getVal()
{
  return M + 2;
}

void sub1()
{
  int ret = getVal();
  if (ret == 8) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

