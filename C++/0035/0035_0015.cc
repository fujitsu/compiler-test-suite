#include <stdio.h>

int *foo(int *a) {
  int *p = a + 1;
  return p;
}

int main(void) {
  int a[5], *p, *q;
  a[0] = 1;
  a[1] = 2;
  a[2] = 3;
  a[3] = 4;
  a[4] = 5;
  p = foo(a);
  q = foo(a);
  if (*p == 2 && *q == 2) {
    printf("test: ok\n");
  } else {
    printf("test: ng\n");
  }
  return 0;
}
