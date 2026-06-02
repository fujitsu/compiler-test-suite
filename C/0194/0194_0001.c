// fcc -Nclang -O2 -fno-unroll-loops

#include <stdio.h>

void test(__fp16 *restrict a, long double *restrict b, int n) {
  for (int i=0; i<n; i++) {
    *a += 0.1f16;
    b[i+1] = b[i];
  }
}

#define N 200

int main() {
  __fp16 a = 0.0f16;
  long double b[N];

  for (int i=0; i<N; i++)
    b[i] = i % 2 == 0;

  test(&a, b, N-1);

  __fp16 test_a = 0.0f16;
#pragma clang loop vectorize(disable)
  for (int i=0; i<N-1; i++)
    test_a += 0.1f16;

  if (a != test_a) {
    puts("NG");
    return 1;
  }

  return 0;
}
