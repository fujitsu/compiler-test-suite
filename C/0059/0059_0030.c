
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>

union convert { int i; double d; };

int main(void) {
  union convert u;
  int x=10;
  double y=1.175494e-38;

  u = (union convert)x;
  if (u.i==x) printf("ok1\n");
  else        printf("ng1\n");

  u = (union convert)y;
  if (u.d==y) printf("ok2\n");
  else        printf("ng2\n");

  return 0;

}
