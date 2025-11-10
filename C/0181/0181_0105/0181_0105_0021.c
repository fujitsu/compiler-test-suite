#include <stdio.h>

static void sub(int n, double a[], double b[], double c[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = b[i] / c[i];
}

int lto_sub_21()
{
  double a[5];
  double b[5] = {2.,4.,6.,8.,10.};
  double c[5] = {1.,2.,3.,4.,5.};
  sub(5,a,b,c);
  if (a[0] == 2. && a[1] == 2. && a[2] == 2. && a[3] == 2. && a[4] == 2.) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf,%lf,%lf,%lf,%lf\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
