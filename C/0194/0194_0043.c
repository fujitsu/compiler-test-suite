// fcc -Nclang -O2 -fno-unroll-loops

#include <stdio.h>

void test(long double *restrict a, double *restrict b, int n) {
  for (int i=0; i<n; i++) {
    *a += 0.1l;
    b[i+2] = b[i];
  }
}

#define N 200

int main() {
  long double a = 0.0l;
  double b[N];

  for (int i=0; i<N; i++)
    b[i] = i % 2 == 0;

  test(&a, b, N-2);

  long double test_a = 0.0l;
#pragma clang loop vectorize(disable)
  for (int i=0; i<N-2; i++)
    test_a += 0.1l;

  if (a != test_a) {
    puts("NG");
    return 1;
  }

  return 0;
}
