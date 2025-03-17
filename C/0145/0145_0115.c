

#include <stdio.h>

int main()
{
  int a = 0,i;

#pragma omp parallel
  {
#pragma omp for ordered
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
#pragma omp task
	{
#pragma omp atomic
	  a += 1;
	}
      }
    }
  }

  
  if (a != 10) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
