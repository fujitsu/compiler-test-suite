

#include <stdio.h>

int main()
{
  int a=5,i;

#pragma omp parallel
  {
#pragma omp for ordered private(a)
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
	a=12;
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
  }

  
  printf("pass\n");

  return 0;
}
