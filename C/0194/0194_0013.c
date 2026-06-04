// fcc -Nclang -O2 -fno-unroll-loops

#include <stdio.h>
#include <stdbool.h>

void test(float *restrict a, bool *restrict b, int n) {
  for (int i=0; i<n; i++) {
    *a += 0.1f;
    b[i+128] = b[i];
  }
}

#define N 200

int main() {
  float a = 0.0f;
  bool b[N];

  for (int i=0; i<N; i++)
    b[i] = i % 2 == 0;

  test(&a, b, N-128);

  float test_a = 0.0;
#pragma clang loop vectorize(disable)
  for (int i=0; i<N-128; i++)
    test_a += 0.1f;

  if (a != test_a) {
    puts("NG");
    return 1;
  }

  return 0;
}
