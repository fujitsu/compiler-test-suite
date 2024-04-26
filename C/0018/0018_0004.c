#include <stdio.h>
#include <complex.h>

void sub(int n, double _Complex a[], double _Complex b[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = b[i];
}

int main()
{
  double _Complex a[5];
  double _Complex b[5] = {0.+1.I,1.+2.I,2.+3.I,3.+4.I,4.+5.I};
  sub(5,a,b);
  if (a[0] == 0.+1.I && a[1] == 1.+2.I && a[2] == 2.+3.I && a[3] == 3.+4.I && a[4] == 4.+5.I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI,%lf+%lfI\n",creal(a[0]),cimag(a[0]),creal(a[1]),cimag(a[1]),creal(a[2]),cimag(a[2]),creal(a[3]),cimag(a[3]),creal(a[4]),cimag(a[4]));
  }
}
