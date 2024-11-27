
#include <stdio.h>
#define ANS 20

void init(int *x) {
  *x = 3;
}

void test(int x) {
  if (x != ANS) {
    printf("NG\n",x);
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
#pragma omp task shared(x) depend(in: x)
    {
      x = x - 1;
    }
#pragma omp task shared(x) depend(out: x)
    {
      x = x * 10;
    }
#pragma omp task shared(x) depend(inout: x)
    {
      test(x);
    }
  }
  return 0;
}
