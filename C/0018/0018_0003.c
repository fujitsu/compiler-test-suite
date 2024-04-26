#include <stdio.h>
#include <complex.h>

void sub(int n, double _Complex a[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = i+i*I;
}

int main()
{
  double _Complex a[5];
  sub(5,a);
  if (a[0] == 0.+0.I && a[1] == 1.+1.I && a[2] == 2.+2.I && a[3] == 3.+3.I && a[4] == 4.+4.I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI\n",creal(a[0]),cimag(a[0]),creal(a[1]),cimag(a[1]),creal(a[2]),cimag(a[2]),creal(a[3]),cimag(a[3]),creal(a[4]),cimag(a[4]));
  }
}
