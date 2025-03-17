
#include <stdio.h>

double fptrans(long long int i)
{
  double f;
  f = (double)i;
  return f;
}

#define ANS  2.00000
#define PERMISSIBLE 0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void)
{
  double f;
  f = 2.0;
  f = fptrans((long long int)f);
  if (GET_ABS(f-ANS)<=PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng: %lf\n", f);
  }
}


