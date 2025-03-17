#include <stdio.h>

void foo(int *a, long long int *b, short *c, int n) {
  int i;
  for (i = 0; i < n; ++i) {
    a[i] = a[i] + (int)b[i] * (int)c[i];
  }
}

int main(void) {
  int a[100];
  long long int b[100];
  short int c[100];
  int i, k = 0;

  for (i = 0; i < 100; ++i) {
    a[i] = i;
    b[99 - i] = i;
    c[i] = 1;
  }

  foo(a, b, c, 100);

  for (i = 0; i < 100; ++i) {
    k += a[i];
  }

  if (k == 9900) {
    printf("test : ok\n");
  } else {
    printf("test : ng : %d\n", k);
  }
  return 0;
}
