
#include <stdio.h>
#define ANS 2

void init(int *x) {
  *x = 1;
}

void test(int x) {
  if (x != ANS) {
    printf("NG\n");
  }
    printf("OK\n");
}

int main()
{
  int x;

  init (&x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(out: x)
    x = 2;
#pragma omp task shared(x) depend(in: x)
    test(x);
  }
  return 0;
}
