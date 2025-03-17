

#include <stdio.h>

int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp sections
    {
#pragma omp section
      {
#pragma omp critical
	{
#pragma omp task
	  {
#pragma omp atomic
	    a += 10;
	  }
#pragma omp taskwait
	}
      }
#pragma omp section
      {
#pragma omp critical
	{
#pragma omp task
	  {
#pragma omp atomic
	    a += 10;
	  }
#pragma omp taskwait
	}
      }
    }
  }

  
  if (a != 20) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
