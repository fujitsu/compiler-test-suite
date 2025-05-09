#include <stdio.h>
#define ANS 1

void init(int *x) {
  *x = 2;
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
#pragma omp task shared(x) depend(inout: x)
    {
      x = x - 1;
    }
#pragma omp task shared(x) depend(inout: x)
    test(x);
  }
  return 0;
}
