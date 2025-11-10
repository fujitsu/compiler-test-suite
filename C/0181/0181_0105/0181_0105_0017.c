#include <stdio.h>

static double sub(int n, double a[], double b[])
{
  int i;
  double sum = 0.;
  for (i = 0; i < n; ++i) sum = sum + a[i] * b[i];
  return sum;
}

int lto_sub_17()
{
  double a[5] = {0.,1.,2.,3.,4.};
  double b[5] = {5.,6.,7.,8.,9.};
  double ans = sub(5,a,b);
  if (ans == 80.) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf\n",ans);
  }
}
