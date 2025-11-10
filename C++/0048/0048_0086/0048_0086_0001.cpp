#include <cstdio>

struct B
{
  static constexpr int getConstVal(int val)
  {
    return val + 1;
  }
};

template <int N = B::getConstVal(2)>
static constexpr int getVal()
{
  return N + 3;
}

void sub1()
{
  int ret = getVal();
  if (ret == 6) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

