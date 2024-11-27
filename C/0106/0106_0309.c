#include<stdio.h>
#include <math.h>

double atan_f(void)
{
  double d, d_rad;
  d = tan((3.14*2)/3.0);
  d_rad = -atan(d);
  return d_rad;
}
int main(void)
{
  double result;
  result = atan_f();
  if (result < 1.1) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
 
