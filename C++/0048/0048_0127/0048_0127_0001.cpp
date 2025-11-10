#include <cstdio>

#include "001.hpp"
#include "000.hpp"
#include "002.hpp"

void sub1()
{
  double ret1 = Composer<Abs, Sin>(Abs(), Sin())( 0.5);
  double ret2 = Composer<Abs, Sin>(Abs(), Sin())(-0.5);
  if (ret1 != ret2) { std::puts("NG 1"); }

  double ret3 = Composer<Sin, Abs>(Sin(), Abs())( 0.5);
  double ret4 = Composer<Sin, Abs>(Sin(), Abs())(-0.5);
  if (ret3 == ret4) { std::puts("OK");   }
  else              { std::puts("NG 2"); }
}
