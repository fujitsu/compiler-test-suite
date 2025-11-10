#include <cstdio>

static constexpr int getConstVal()
{
  return 1;
}

template <int N = getConstVal()>
constexpr int getVal(int value)
{
  return N + value;
}

void sub1()
{
  int ret = getVal<2>(3);
  if (ret == 5) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

