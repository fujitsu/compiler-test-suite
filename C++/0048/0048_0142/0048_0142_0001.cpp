#include <cstdio>
#include "000.hpp"

__attribute__ ((constructor (4000)))
void A::B::funcAB()
{
  std::puts("A::B::funcAB()");
}

__attribute__ ((destructor (4000)))
void A::C::funcAC()
{
  std::puts("A::C::funcAC()");
}
