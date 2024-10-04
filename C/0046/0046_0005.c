
#include <stdio.h>

void eval_r8(double *x, double *y, double *z, double *a)
{
  *a = *x * *y + *x * *z;
}

void eval_i8(long long int *x,long long int *y,long long int *z,long long int *a)
{
  *a = *x * *y - *x * *z;
}

int main(void)
{
  double r1,r2,r3,a;
  long long int i1,i2,i3,d;
  const double r8ans = 14.0;
  const long long int i8ans = -2LL;
  int mm;

  mm = 1;

  
  r1 = 2.0;
  r2 = 3.0;
  r3 = 4.0;
  eval_r8(&r1,&r2,&r3,&a);
  if (a != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", a, r8ans);
  }

  
  i1 = 2LL;
  i2 = 3LL;
  i3 = 4LL;
  eval_i8(&i1,&i2,&i3,&d);
  if (d != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", d, i8ans);
  }
  
  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
