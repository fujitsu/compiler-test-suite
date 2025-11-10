#include <cstdio>

template <typename T1, typename T2>
auto isAddable(T1 a, T2 b) -> decltype(a + b, bool())
{
  std::printf("isAddable1\n");
  return true;
}

auto isAddable(...) -> bool
{
  std::printf("isAddable2\n");
  return false;
}

struct Z {};

void sub1()
{
  isAddable(3, 2);
  isAddable(3, Z());
}
