#include <stdio.h>

void foo(float *a, int n) {
  int i;
  float b = 1111.0;

  for (i = 0; i < n; ++i) {
    a[i] = b;
  }
}

int main() {
  int i;
  float a[100];
  foo(a, 100);
  for (i = 0; i < 100; ++i) {
    if (a[i] != 1111.0) {
      printf("NG\n");
    }
  }
  printf("OK\n");
  return 0;
}
