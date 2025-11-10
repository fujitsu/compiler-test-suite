#include <cstdio>
#include "000.hpp"

void B::foo()
{
  void *p1 = &&l1;
  void *p2 = &&l2;
  
  goto *p2;
  
 l1:
  ++counter;
  return;
  
 l2:
  ++counter;
  goto *p1;
}

void B::check()
{
  if (counter == 2) { std::puts("OK"); }
}
