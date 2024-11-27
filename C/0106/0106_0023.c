#include <stdio.h>

void line() {
  printf("OK ");
}

void foo(int n, float *a) {
  int i;
  for (i = 0; i < n-1; ++i) {
    a[i] = 0.0;
    line();
  }
  a[i] = 0.0;
}

void bar(int n, float *a) {
  int i;
  for (i = 0; i < n-1; ++i) {
    a[i] = 0.1;
    line();
  }
  a[i] = 0.1;
}
  
int main() {
  float a[100];
  float b[100];

  foo(100, a);
  bar(100, b);

  printf("\n%f, %f\n", a[99], b[99]);
  return 0;
}
