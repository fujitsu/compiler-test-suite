#include <stdio.h>

void sub(int n, double a[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = (double)i;
}

int main()
{
  double a[5];
  sub(5,a);
  if (a[0] == 0. && a[1] == 1. && a[2] == 2. && a[3] == 3. && a[4] == 4.) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf,%lf,%lf,%lf,%lf\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
