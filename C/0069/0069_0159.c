
#include <stdio.h>
#define ANS_1 1
#define ANS_2 2

void init(int *x) {
  *x = 1;
}

void test1(int x) {
  if (x != ANS_1) {
    printf("NG\n");
  }
}

void test2(int x) {
  if (x != ANS_2) {
    printf("NG\n");
  }
}

int main()
{
  int x;

  init (&x);

#pragma omp parallel private(x)
  {
#pragma omp parallel
    {
#pragma omp single
      {
#pragma omp task shared(x) depend(in: x)
        x = 1;
#pragma omp task shared(x) depend(inout: x)
	{
	  test1(x);
	  x = 2;
	  test2(x);
	}
      }
    }
  }
  printf("OK\n");

  return 0;
}
