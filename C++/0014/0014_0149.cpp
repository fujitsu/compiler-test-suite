#include <omp.h>
#include <stdio.h>
#define ANS 3

void init(int *x) { *x = 2; }

void test(int x) {
  if (x != ANS) {
    printf("NG\n");
  }
  printf("OK\n");
}

int main() {
  int x;

  init(&x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) final(x == ANS - 1) depend(out : x)
    {
      if (!omp_in_final()) {
        printf("NG\n");
      }
      x = x + 1;
    }
#pragma omp task shared(x) depend(out : x)
    { test(x); }
  }

  return 0;
}
