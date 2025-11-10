#include <cstdio>

template <int M>
struct B
{
  static constexpr int getConstVal()
  {
    return M + 1;
  }
};

template <int N = B<2>::getConstVal()>
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

