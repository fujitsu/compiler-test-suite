#include <stdio.h>

unsigned char foo0(void) { return (unsigned char)1; }

int check(unsigned char x[], unsigned char y[], int n) {
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
  unsigned char r1[100], r2[100];
  int i;

  for (i = 0; i < N; i++) {
    r1[i] = foo0();
  }

#pragma omp simd simdlen(64)
  for (i = 0; i < N; i++) {
    r2[i] = foo0();
  }

  check(r1, r2, N);
}
