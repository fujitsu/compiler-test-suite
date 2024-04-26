#include <stdio.h>
#include <complex.h>

double _Complex sub(int n, double _Complex a[])
{
  int i;
  double _Complex sum = 0.+0.I;
  for (i = 0; i < n; ++i) sum += a[i];
  return sum;
}
int main()
{
  double _Complex a[5] = {0.+1.I,1.+2.I,2.+3.I,3.+4.I,4.+5.I};
  double _Complex ans = sub(5,a);
  if (ans == 10.+15.I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI\n",creal(ans),cimag(ans));
  }
}
