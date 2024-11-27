#include <stdio.h>

void init(int *x) {
  *x = 1;
}

void test(int x) {
  if ((x != 3) && (x != 4)) {
    printf("NG %d\n", x);
  }
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
    {
      test(x+1);
    }
#pragma omp task shared(x) depend(in: x)
    {
      test(x+2);
    }
  }
  printf("OK\n");
  
  return 0;
}
