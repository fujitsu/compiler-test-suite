#include <stdio.h>
#define ANS 4
#define N 100

void init(int *x) {
  int i;
  for (i = 0; i < N; i++) {
    x[i] = 1;
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
#pragma omp task shared(x) depend(out : x[:50])
    {
      for (i = 0; i < N; i++) {
        x[i] += 3;
      }
    }
#pragma omp task shared(x) depend(out : x[:50])
    test(x);
  }

  return 0;
}
