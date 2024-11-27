#include <stdio.h>

void line() {
  printf("OK ");
}

void foo(int n, int *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 1111111;
    line();
  }
}

void bar(int n, int *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 1111111;
  }
}

void foo2(int n, int *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 0;
    line();
  }
}

void bar2(int n, int *a) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = 0;
  }
}

#ifndef ASM_ONLY
int main() {
  int a[100];
  int b[100];
  int c[100];
  int d[100];
  foo(100, a);
  bar(100, b);
  foo2(100, c);
  bar2(100, d);

  printf("\n%d, %d, %d, %d\n", a[99], b[99], c[99], d[99]);
  return 0;
}
#endif  
