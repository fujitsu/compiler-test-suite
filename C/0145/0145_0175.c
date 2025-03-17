

#include <stdio.h>

int main()
{
  int a=0;

#pragma omp parallel private(a)
  {
    a = 18;
#pragma omp critical
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
