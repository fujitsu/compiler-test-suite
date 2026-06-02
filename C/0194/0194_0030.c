// fcc -Nclang -O2 -fno-unroll-loops

#include <stdio.h>

void test(double *restrict a, _Float16 *restrict b, int n) {
  for (int i=0; i<n; i++) {
    *a += 0.1;
    b[i+8] = b[i];
  }
}

#define N 200

int main() {
  double a = 0.0;
  _Float16 b[N];

  for (int i=0; i<N; i++)
    b[i] = i % 2 == 0;

  test(&a, b, N-8);

  double test_a = 0.0;
#pragma clang loop vectorize(disable)
  for (int i=0; i<N-8; i++)
    test_a += 0.1;

  if (a != test_a) {
    puts("NG");
    return 1;
  }

  return 0;
}
