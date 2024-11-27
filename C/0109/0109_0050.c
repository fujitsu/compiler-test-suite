

#include<stdio.h>
#include <math.h>

double atan_f(void)
{
  double d, d_rad, sum;
  int i;
  sum = 1.0;
  for (i=1; i < 6; ++i) {
    d = tan((3.14*i)/3.0);
    d_rad = -atan(d);
    sum = sum * d_rad;
  }
  return sum*1000;
}
int main(void)
{
  double result;
  result = atan_f();
  if (result < 2.0) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}

