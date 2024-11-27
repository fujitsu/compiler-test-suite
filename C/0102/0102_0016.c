#include <stdio.h>
#include <fenv.h>
#include <memory.h>

static double data = 1./3.;

double test()
{
  double x = 1.;
  double y = 3.;
  double z;

  z = x / y;

  return z;
}

int main()
{
  double z;
  int mode = fegetround();
  if( mode != FE_TONEAREST) {
    puts("NG0");
  }
  fesetround(FE_UPWARD);
  z = test();
  mode = fegetround();
  if( mode != FE_UPWARD) {
    puts("NG1");
  }
  fesetround(FE_UPWARD);
  if (memcmp(&z, &data, sizeof(double)) == 0 ) {
    puts("NG");
  }
  else {
    puts("PASS");
  }
  return 0;
}
