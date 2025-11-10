#include <cstdio>

void sub1()
{
  int rate = 2;
  int ret = [rate] (int x) mutable -> int {
    return x * (++rate);
  } (3);

  if (ret == 9) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}
