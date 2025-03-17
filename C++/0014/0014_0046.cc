#include <stdio.h>

float foo3(float x, float *y) { return x + *y; }

void init(float x[], float y[], int n) {
  int i;
  for (i = 0; i < n; i++) {
    x[i] = (float)i;
    y[i * 2] = (float)(n - i);
    y[i * 2 + 1] = y[i * 2];
  }
}

int check(float x[], float y[], int n) {
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
  float a[100], b[200], r1[100], r2[100];
  float *bp;
  int i;

  init(a, b, N);

  for (i = 0; i < N; i++) {
    r1[i] = foo3(a[i], &b[i * 2]);
  }

  bp = b;
#pragma omp simd simdlen(16)
  for (i = 0; i < N; i++) {
    r2[i] = foo3(a[i], bp);
    bp += 2;
  }

  check(r1, r2, N);
}
