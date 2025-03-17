#include <stdio.h>

double foo(double i, double j) {
  return (i + j);
}
int main()
{
  double x;
  x = foo(-10000.000002, -20000.000030);
  if (x == -30000.000032) {
    printf("OK\n");
  } else {
    printf("NG\t%lf\n", x);
  }
}
