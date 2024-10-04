
#include <stdio.h>

void branch_opt_r8(double *x, double *y, double *z)
{
  double t = 0.0;
     
 next4r:  
  if (*x == *y) {
    t = *x + *y;
  }
  if (*x == *y) {
    t = *x + *y;
    goto next2r;
  }
  t = 1.0;
 next2r:
  if (*x == *y) {
    goto next3r;
  }
  goto next4r;
 next3r:
  *z = t - (*x + *y);
}

void branch_opt_i8(long long int *x, long long int *y, long long int *z)
{
  long long int t = 0LL;
     
 next4i:  
  if (*x == *y) {
    t = *x + *y;
  }
  if (*x == *y) {
    t = *x + *y;
    goto next2i;
  }
  t = 1LL;
 next2i:
  if (*x == *y) {
    goto next3i;
  }
  goto next4i;
 next3i:
  *z = t - (*x + *y);
}

int main(void) 
{
  double r1,r2,r3;
  long long int i1,i2,i3;
  const double r8ans = 0.0;
  const long long int i8ans = 0LL;
  int mm;

  mm = 1;

  
  r1 = 2.0;
  r2 = 2.0;
  r3 = 4.0;
  branch_opt_r8(&r1,&r2,&r3);
  if (r3 != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r3, r8ans);
  }
  
  
  i1 = 2LL;
  i2 = 2LL;
  i3 = 4LL;
  branch_opt_i8(&i1,&i2,&i3);
  if (i3 != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", i3, i8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
