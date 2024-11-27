
#include <stdio.h>


void foo(int n, float * restrict a) {
  int i;
#pragma clang loop vectorize(enable)
  for(i = 0; i < n; i++) {
    a[i] = 0.0F;
  }
}

void bar(int n, float * restrict b) {
  int i;
#pragma clang loop vectorize(disable)
  for(i = 0; i < n; i++) {
    b[i] = 0.0F;
  }
}

int main() {
  float a[100];
  float b[100];
  foo(100, a);
  bar(100, b);
  printf("%f, %f\n", a[99], b[99]);
  return 0;
}
