

#include <stdio.h>

void bar() {
  printf("OK ");
}
void line() {
  printf("OK ");
}

void foo(int n, float * restrict a, float * restrict b) {
  int i;
  float zero = 0.0;

  for (i = 0; i < n; ++i) {
    a[i] = zero;
    bar();
  }

  for (i = 0; i < n; ++i) {
    b[i] = zero;
    line();
  }
}

#ifndef ASM_ONLY
int main() {
  float a[100];
  float b[100];
  foo(100, a, b);
  printf("\n%f, %f\n", a[99], b[99]);
  return 0;
}
#endif  
