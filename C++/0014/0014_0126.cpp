#include <stdio.h>
#define ANS 16
#define N 100

void init(int *x) {
  int i;
  for (i = 0; i < N; i++) {
    x[i] = 4;
  }
}

void test(int *x) {
  int i;
  for (i = 0; i < N; i++) {
    if (x[i] != ANS) {
      printf("NG\n");
    }
  }
  printf("OK\n");
}

int main() {
  int x[N], i;
  int m;

  m = 75;
  init(x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(inout : x[:m / 2])
    {
      for (i = 0; i < N; i++) {
        x[i] = x[i] + 3 * x[i];
      }
    }
#pragma omp task shared(x) depend(inout : x[:m / 2])
    test(x);
  }

  return 0;
}
