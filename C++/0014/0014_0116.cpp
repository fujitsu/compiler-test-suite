#include <stdio.h>
#define ANS 3

void init(int *x) {
  *x = 1;
}

void test(int x) {
  if (x != ANS) {
    printf("NG %d\n", x);
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
#pragma omp taskgroup
    {
#pragma omp task shared(x) depend(inout: x)
    x = 2;
#pragma omp task shared(x) depend(out: x)
    x = 3;
    }
    test(x);
  }
  return 0;
}
