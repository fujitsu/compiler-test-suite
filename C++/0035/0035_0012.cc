#include <stdio.h>

void foo(int *a, int *b, int n) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = a[i] + a[i] * b[i];
  }
}

int main(void) {
  int a[100], b[100];
  int i, k = 0;

  for (i = 0; i < 100; ++i) {
    a[i] = i;
    b[99 - i] = i;
  }

  foo(a, b, 100);

  for (i = 0; i < 100; ++i) {
    k += a[i];
  }

  if (k == 166650) {
    printf("test : ok\n");
  } else {
    printf("test : ng\n");
  }
  return 0;
}
