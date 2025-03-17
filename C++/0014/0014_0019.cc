#include <stdio.h>

signed char foo6(signed char x, signed char y) { return x + y; }

void init0(signed char x[], int n) {
  int i;
  for (i = 0; i < n; i++) {
    x[i] = (signed char)0;
  }
}

void init(signed char x[], signed char y[], int n) {
  int i;
  for (i = 0; i < n; i++) {
    x[i] = (signed char)i;
    y[i] = (signed char)(n - i);
  }
}

int check(signed char x[], signed char y[], int n) {
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
  signed char a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);
  init0(r1, N);
  init0(r2, N);
  for (i = 0; i < N; i++) {
    if (i > 10) {
      r1[i] = foo6(a[i], b[i]);
    }
  }

#pragma omp simd simdlen(2)
  for (i = 0; i < N; i++) {
    if (i > 10) {
      r2[i] = foo6(a[i], b[i]);
    }
  }

  check(r1, r2, N);
}
