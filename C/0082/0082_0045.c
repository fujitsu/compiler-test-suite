#include <stdio.h>
  
#include <limits.h>
#if defined(__sparc) && !defined(__linux)
#include <ieeefp.h>
#else
#include <float.h>
#endif
#include <math.h>

int i=0;

void test_fpclass(double d)
{
  double ans;
  ans = floor(d);
#if defined(__sparc)
  printf("%d 0x%.8x%.8x\n",i++,*(int *)&ans, *((int *)&ans + 1));
#else
  printf("%d 0x%.8x%.8x\n",i++,*((int *)&ans + 1),*(int *)&ans);
#endif
}
int main()
{
  double ans;
  double zero =0.0;
  double one  =1.0;
  double snan;
  *(long long *)&snan = 0x7ff0000000000001;
  test_fpclass(snan);
#if defined(__i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("%d 0x%.8x%.8x\n",i++,0x7fffffff,0xffffffff);
#else
  test_fpclass(zero/zero);           
#endif
  test_fpclass(-DBL_MAX*10.0);
  test_fpclass(DBL_MAX*10.0);
  test_fpclass(-DBL_MIN/10.0);
  test_fpclass(DBL_MIN/10.0);
  test_fpclass(-zero);
  test_fpclass( zero);
  test_fpclass(-1.0);
  test_fpclass(1.0);
}
