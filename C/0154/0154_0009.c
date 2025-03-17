#include <stdio.h>

long double foo(long double i, long double j) {
  return (i + j);
}
int main()
{
  long double x;
  x = foo(-10000.000001, -20000.000002);
  if (x == -30000.000003) {
    printf("OK\n");
  } else {
    printf("NG\t%Lf\n", x);
  }
}
