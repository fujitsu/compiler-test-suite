// fcc -Nclang -O2 -fno-unroll-loops

#include <stdio.h>
#include <stdbool.h>

void test(double *restrict a, bool *restrict b, int n) {
  for (int i=0; i<n; i++) {
    *a += 0.1;
    b[i+128] = b[i];
  }
}

#define N 200

int main() {
  double a = 0.0;
  bool b[N];

  for (int i=0; i<N; i++)
    b[i] = i % 2 == 0;

  test(&a, b, N-128);

  double test_a = 0.0;
#pragma clang loop vectorize(disable)
  for (int i=0; i<N-128; i++)
    test_a += 0.1;

  if (a != test_a) {
    puts("NG");
    return 1;
  }

  return 0;
}
