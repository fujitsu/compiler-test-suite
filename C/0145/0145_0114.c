

#include <stdio.h>

int main()
{
  int a=0;

#pragma omp parallel
  {
#pragma omp master
    {
#pragma omp critical
      {
#pragma omp task
	{
#pragma omp atomic
	  a += 1;
	}
#pragma omp taskwait
      }
    }
  }

  
  if (a != 1) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
