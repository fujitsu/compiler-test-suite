

#include <stdio.h>

int main()
{
  int a=5;

#pragma omp parallel
  {
#pragma omp sections private(a)
    {
#pragma omp section
      {
	a=10;
#pragma omp taskwait
	if (a!=10) {
	  printf("NG1:a=%d\n",a);
	}
      }
#pragma omp section
      {
	a=20;
#pragma omp taskwait
	if (a!=20) {
	  printf("NG2:a=%d\n",a);
	}
      }
    }
  }

  
  printf("pass\n");

  return 0;
}
