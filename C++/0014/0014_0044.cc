#include <stdio.h>

int foo1(int x, int *y) { return x + *y; }

void init(int x[], int y[], int n) {
  int i;
  for (i = 0; i < n; i++) {
    x[i] = i;
    y[i * 2] = n - i;
    y[i * 2 + 1] = n - i;
  }
}

int check(int x[], int y[], int n) {
  int i;
  for (i = 0; i < n; i++) {
    if (x[i] != y[i])
      break;
  }
  if (i != n) {
    printf("ng\n");
    return 1;
  } else {
    printf("ok\n");
  }
  return 0;
}

int main(void) {
  const int N = 100;
  int a[100], b[200], r1[100], r2[100];
  int *bp;
  int i;

  init(a, b, N);

  for (i = 0; i < N; i++) {
    r1[i] = foo1(a[i], &b[i * 2]);
  }

  bp = b;
#pragma omp simd simdlen(16)
  for (i = 0; i < N; i++) {
    r2[i] = foo1(a[i], bp);
    bp += 2;
  }

  check(r1, r2, N);
}
