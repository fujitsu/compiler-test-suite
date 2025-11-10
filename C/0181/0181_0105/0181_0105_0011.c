#include <stdio.h>

static void sub(int n, double a[], double b[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = a[i+1] + b[i];
}

int lto_sub_11()
{
  double a[5] = {0.,1.,2.,3.,4.};
  double b[5] = {5.,6.,7.,8.,9.};
  sub(4,a,b);
  if (a[0] == 6. && a[1] == 8. && a[2] == 10. && a[3] == 12. && a[4] == 4.) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf,%lf,%lf,%lf,%lf\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
