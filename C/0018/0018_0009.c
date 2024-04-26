#include <stdio.h>
#include <complex.h>

double _Complex sub(int n, double _Complex a[], double _Complex b[])
{
  int i;
  double _Complex sum = 0.+0.I;
  for (i = 0; i < n; ++i) sum = sum + a[i] * b[i];
  return sum;
}
int main()
{
  double _Complex a[5] = {0.+1.I,1.+2.I,2.+3.I,3.+4.I,4.+5.I};
  double _Complex b[5] = {5.+6.I,6.+7.I,7.+8.I,8.+9.I,9.+10.I};
  double _Complex ans = sub(5,a,b);
  if (ans == -50.+205.I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI\n",creal(ans), cimag(ans));
  }
}
