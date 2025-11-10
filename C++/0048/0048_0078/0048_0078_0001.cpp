#include <cstdio>

extern int func(void);

void sub1()
{
  decltype(func()) a = 10;
  std::printf("%d\n", a);
}
