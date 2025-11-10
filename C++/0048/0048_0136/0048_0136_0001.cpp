#include <cstdio>
#include "000.hpp"

struct C
{
  int a[4];
};

static C boo()
{
  C c;

  c.a[0] = 1;
  c.a[1] = 2;
  c.a[2] = 3;
  c.a[3] = 4;

  return c;
}

void B::foo()
{
  int ret = boo().a[0] + boo().a[1] + boo().a[2] + boo().a[3];
  if (ret == 10) { std::puts("OK"); }
}
