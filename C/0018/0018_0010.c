#include <stdio.h>
#include <complex.h>

void sub(int n, double _Complex a[], double _Complex b[], double _Complex c[], double _Complex d[])
{
  int i;
  for (i = 0; i < n; ++i) d[i] = c[i] + a[i] * b[i];
}
int main()
{
  double _Complex a[5] = {0.+1.I,1.+2.I,2.+3.I,3.+4.I,4.+5.I};
  double _Complex b[5] = {5.+6.I,6.+7.I,7.+8.I,8.+9.I,9.+10.I};
  double _Complex c[5] = {10.+11.I,11.+12.I,12.+13.I,13.+14.I,14.+15.I};
  double _Complex d[5];
  sub(5,a,b,c,d);
  if (a[0] == 0.+1.I && a[1] == 1.+2.I && a[2] == 2.+3.I && a[3] == 3.+4.I && a[4] == 4.+5.I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI\n",creal(a[0]),cimag(a[0]),creal(a[1]),cimag(a[1]),creal(a[2]),cimag(a[2]),creal(a[3]),cimag(a[3]),creal(a[4]),cimag(a[4]));
  }
}
