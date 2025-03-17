

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=0,i;

#pragma omp parallel
  {
#pragma omp for
    for (i=0;i<10;i++) {
#pragma omp task
      {
#pragma omp atomic
	a += 1;
      }
#pragma omp taskwait
    }
  }

  
  if (a != 10) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
