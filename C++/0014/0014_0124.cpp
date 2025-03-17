#include <stdio.h>
#define ANS 81
#define N 100

void init(int *x) {
  int i;
  for (i = 0; i < N; i++) {
    x[i] = 9;
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

  init(x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(inout : x [2:10])
    {
      for (i = 0; i < N; i++) {
        x[i] = x[i] * x[i];
      }
    }
#pragma omp task shared(x) depend(in : x [2:10])
    test(x);
  }

  return 0;
}
