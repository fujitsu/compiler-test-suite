#include <stdio.h>


#define ANS 0.0L
int main()
{
  float        r4[1];
  double       r8[1];
  long double r16[1];
  long double res;

  r4[0]  = 0.0F;
  r8[0]  = 0.0;
  r16[0] = 0.0L;
  r4[0]  = r4[0]  +   0.0F;
  r8[0]  = r8[0]  +    0.0;
  r16[0] = r16[0] +   0.0L;
  r4[0]  = 0.0F   +  r4[0];
  r8[0]  = 0.0    +  r8[0];
  r16[0] = 0.0L   + r16[0];
  r4[0]  = r4[0]  -   0.0F;
  r8[0]  = r8[0]  -    0.0;
  r16[0] = r16[0] -   0.0L;

  res = (long double)r4[0]+(long double)r8[0]+r16[0];

  if (res == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}
