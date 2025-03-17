

#include <stdio.h>

int main()
{
  int a=5;

#pragma omp parallel
  {
#pragma omp single private(a)
    {
      a = 10;
#pragma omp taskwait
      if (a!=10) {
	printf("NG:a=%d\n",a);
      }
    }
  }

  
  printf("pass\n");

  return 0;
}
