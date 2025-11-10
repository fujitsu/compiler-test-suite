#include <cstdio>

template <int N>
static constexpr int getConstVal()
{
  return N;
}

template <int M = getConstVal<3>()>
static constexpr int getVal()
{
  return M + 2;
}

void sub1()
{
  int ret = getVal();
  if (ret == 5) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

