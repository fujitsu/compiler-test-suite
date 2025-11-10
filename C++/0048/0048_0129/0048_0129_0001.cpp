#include <stdio.h>
#include "000.hpp"

A::A()
{
  val1 = 1.23 + 3.45i;
  val2 = ~val1;
}

void A::foo()
{
  printf("%2.3f, %2.3f\n", __real__ val2, __imag__  val2);
}
