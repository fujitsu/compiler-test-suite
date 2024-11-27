#include <stdio.h>


#define ANS 0.0L
int main()
{
  float        r4;
  double       r8;
  long double r16;
  long double res;

  r4  = 0.0F;
  r8  = 0.0;
  r16 = 0.0L;
  r4  = r4  + 0.0F;
  r8  = r8  + 0.0;
  r16 = r16 + 0.0L;
  r4  = r4  - 0.0F;
  r8  = r8  - 0.0;
  r16 = r16 - 0.0L;

  res = (long double)r4+(long double)r8+r16;

  if (res == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}
