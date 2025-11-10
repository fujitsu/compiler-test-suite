#include <cstdio>
#include "000.hpp"

struct B
{
  char a : 2;
  short  : 1;
  short b: 3;
  long   : 0;
  int c  : 4;
  bool d : 1;

  B():
    a(1), b(2), c(6), d(true) {}
};

void sub1()
{
  B b;
  std::printf("%d %d %d %d\n",
	      b.a, b.b, b.c, b.d);
}
