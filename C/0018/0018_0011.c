#include <stdio.h>
#include <complex.h>

void sub(int n, double _Complex a[], double _Complex b[], double _Complex c[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = b[i] / c[i];
}
int main()
{
  double _Complex a[5];
  double _Complex b[5] = {2.+3.I,4.+5.I,6.+7.I,8.+9.I,10.+11.I};
  double _Complex c[5] = {1.+1.I,2.+2.I,4.+4.I,5.+5.I,10.+10.I};
  sub(5,a,b,c);
  if (a[0] == 2.5+.5I && a[1] == 2.25+.25I && a[2] == 1.625+.125I && a[3] == 1.7+.1I && a[4] == 1.05+.05I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI\n",creal(a[0]),cimag(a[0]),creal(a[1]),cimag(a[1]),creal(a[2]),cimag(a[2]),creal(a[3]),cimag(a[3]),creal(a[4]),cimag(a[4]));
  }
}
