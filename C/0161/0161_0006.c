
#include <stdio.h>

float fptrans(int i)
{
  float f;
  f = (float)i;
  return f;
}

#define ANS  2.00000
#define PERMISSIBLE 0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void)
{
  float f;
  f = 2.0;
  f = fptrans((int)f);
  if (GET_ABS(f-ANS)<=PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng: %f\n", f);
  }
}


