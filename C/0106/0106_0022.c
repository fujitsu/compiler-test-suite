#include <stdio.h>

void line() {
  printf("OK ");
}


void foo(int n, float *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 1111111.0;
    line();
  }
}


void bar(int n, float *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 1111111.0;
  }
}

void foo2(int n, float *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 0.0;
    line();
  }
}

void bar2(int n, float *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 0.0;
  }
}

int main() {
  float a[100];
  float b[100];
  float c[100];
  float d[100];
  foo(100, a);
  bar(100, b);
  foo2(100, c);
  bar2(100, d);

  printf("\n%f, %f, %f, %f\n", a[99], b[99], c[99], d[99]);
  return 0;
}
