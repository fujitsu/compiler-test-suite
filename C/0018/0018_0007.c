#include <stdio.h>
#include <complex.h>

void sub(int n, double _Complex a[], double _Complex b[])
{
  int i;
  for (i = 0; i < n; ++i) a[i+1] = a[i] + b[i];
}
int main()
{
  double _Complex a[5] = {0.+1.I,1.+2.I,2.+3.I,3.+4.I,4.+5.I};
  double _Complex b[5] = {5.+6.I,6.+7.I,7.+8.I,8.+9.I,9.+10.I};
  sub(4,a,b);
  if (a[0] == 0.+1.I && a[1] == 5.+7.I && a[2] == 11.+14.I && a[3] == 18.+22.I && a[4] == 26.+31.I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI\n",creal(a[0]),cimag(a[0]),creal(a[1]),cimag(a[1]),creal(a[2]),cimag(a[2]),creal(a[3]),cimag(a[3]),creal(a[4]),cimag(a[4]));
  }
}
