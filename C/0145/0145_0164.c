

#include <stdio.h>

int main()
{
  int a=5;

#pragma omp parallel
  {
#pragma omp task private(a)
    {
      a = 2;
#pragma omp task shared(a)
      {
	a = 10;
      }
#pragma omp taskwait
      if (a!=10) {
	printf("NG:a=%d\n",a);
      }
    }
  }

  
  printf("pass\n");

  return 0;
}
