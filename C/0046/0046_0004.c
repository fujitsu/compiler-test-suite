
#include <stdio.h>

void dce_r8(double *x, double *y)
{
  double z = *x + *y;
}

void dce_r8_do(double *x, double *y, int n)
{
  double z = 0.0;
  int i;
  for (i=0; i<n; ++i) {
    z = z + *x + *y;
  }
}

void dce_i8(long long int *x, long long int *y)
{
  long long int z = *x + *y;
}

void dce_i8_do(long long int *x, long long int *y, int n)
{
  long long int z = 0LL;
  int i;
  for (i=0; i<n; ++i) {
    z = z + *x + *y;
  }
}

int main(void)
{
  double r1,r2;
  long long int i1,i2;

  
  r1 = 2.0;
  r2 = 3.0;
  dce_r8(&r1,&r2);
  dce_r8_do(&r1,&r2,100);

  
  i1 = 2LL;
  i2 = 3LL;
  dce_i8(&i1,&i2);
  dce_i8_do(&i1,&i2,100);
  
  (void)printf("ok\n");
  return 0;
}
