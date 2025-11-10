#include <cstdio>
#include "000.hpp"

int main()
{
  sub1();
  sub2();
  sub3();
  sub4();
  sub5();

  Foo f;
  f.sub1();
  f.sub2();
  f.sub3();
  f.sub4();
  f.sub5();

  std::printf("%d\n", g_val + f.getVal());
}
