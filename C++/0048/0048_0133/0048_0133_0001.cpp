#include <cstdio>
#include "000.hpp"

void B::foo()
{
  void *array[] = { &&l1, &&l2, &&l3 };

  goto *array[2];

 l1:
  ++counter;
  return;

 l2:
  ++counter;
  goto *array[0];

 l3:
  ++counter;
  goto *array[1];
}

void B::check()
{
  if (counter == 3) { std::puts("OK"); }
}
