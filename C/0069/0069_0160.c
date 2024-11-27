
#include <stdio.h>
#define ANS 2

void init(int *x) {
  *x = 0;
}

void test(int x) {
  if (x != ANS) {
    printf("NG\n");
  }
}

int main()
{
  int x;

  init (&x);

#pragma omp parallel
  {
#pragma omp single
    {
#pragma omp task shared(x)	
      {
        x = 1;
#pragma omp task shared(x) depend(out: x)
        x = 2;
#pragma omp task shared(x) depend(in: x)
	{
	  test(x);
	}
      }
    }
  }
  printf("OK\n");

  return 0;
}
