
#include <stdio.h>
#define ANS 4

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
#pragma omp taskgroup
    {
#pragma omp task shared(x) depend(in: x)
      {
#pragma omp atomic update
	x = x + 1;
      }
#pragma omp task shared(x) depend(in: x)
      {
#pragma omp atomic update
	x = x + 2;
      }
    }
    test(x);
  }
  return 0;
}
