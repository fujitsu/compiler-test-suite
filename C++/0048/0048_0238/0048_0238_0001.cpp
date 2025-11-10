#include <cstdio>
#include "000.hpp"

struct B
{
  int val;

  void print()
  {
    std::printf("member function\n");
  }
};

void sub1()
{
  int B::*p = &B::val;
  B b;
  b.*p = 10;

  std::printf("%d\n", b.val);
}

void sub2()
{
  void (B::*p)(void) = &B::print;
  B b;
  (b.*p)();
}
