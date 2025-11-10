#include <cstdio>

namespace MySpace {
  int func(void);
}

using namespace MySpace;

void sub1()
{
  decltype(func()) a = 10;
  std::printf("%d\n", a);
}
