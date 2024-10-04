
#include <stdio.h>

double cse_r8(double *x, double *y)
{
  double z1, z2;
  z1 = *x + *y;
  z2 = *x + *y;
  return z1+z2;
}

long long int cse_i8(long long int *x, long long int *y)
{
  long long int z1, z2;
  z1 = *x + *y;
  z2 = *x + *y;
  return z1+z2;
}

int main(void)
{
  double r1,r2,r8res;
  long long int i1,i2,i8res;
  const double r8ans = 10.0;
  const long long int i8ans = 10LL;
  int mm;
  
  mm = 1;

  
  r1 = 2.0;
  r2 = 3.0;
  r8res = cse_r8(&r1,&r2);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  i1 = 2LL;
  i2 = 3LL;
  i8res = cse_i8(&i1,&i2);
  if (i8res != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
