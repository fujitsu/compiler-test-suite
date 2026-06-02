// fcc -Nclang -O2 -fno-unroll-loops

#include <stdio.h>

void test(float *restrict a, double *restrict b, int n) {
  for (int i=0; i<n; i++) {
    *a += 0.1f;
    b[i+2] = b[i];
  }
}

#define N 200

int main() {
  float a = 0.0f;
  double b[N];

  for (int i=0; i<N; i++)
    b[i] = i % 2 == 0;

  test(&a, b, N-2);

  float test_a = 0.0;
#pragma clang loop vectorize(disable)
  for (int i=0; i<N-2; i++)
    test_a += 0.1f;

  if (a != test_a) {
    puts("NG");
    return 1;
  }

  return 0;
}
