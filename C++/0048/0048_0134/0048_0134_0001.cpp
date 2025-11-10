#include <cstdio>
#include "000.hpp"

void B::foo()
{
  __label__ l1, l2, l3, finish;

  goto l3;

 l1:
  ++counter;
  goto finish;

 l2:
  --counter;
  goto l1;

 l3:
  ++counter;
  goto l2;

 finish:
  ++counter;
}

void B::check()
{
  if (counter == 2) { std::puts("OK"); }
}
