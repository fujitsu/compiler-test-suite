#include <stdio.h>

static double sub(int n, double a[])
{
  int i;
  double sum = 0.;
  for (i = 0; i < n; ++i) sum += a[i];
  return sum;
}

int lto_sub_15()
{
  double a[5] = {0.,1.,2.,3.,4.};
  double ans = sub(5,a);
  if (ans == 10.) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf\n",ans);
  }
}
