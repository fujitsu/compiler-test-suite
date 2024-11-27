#include <stdio.h>


#define ANS 0.0L
int main()
{
  float        r4[1],  d4;
  double       r8[1],  d8;
  long double r16[1], d16;
  long double res;

  r4[0]  =  d4 = 0.0F;
  r8[0]  =  d8 = 0.0;
  r16[0] = d16 = 0.0L;
  r4[0]  = r4[0]  + d4;
  r8[0]  = r8[0]  + d8;
  r16[0] = r16[0] + d16;
  r4[0]  = r4[0]  - d4;
  r8[0]  = r8[0]  - d8;
  r16[0] = r16[0] - d16;

  res = (long double)r4[0]+(long double)r8[0]+r16[0];

  if (res == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}
