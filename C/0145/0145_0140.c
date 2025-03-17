

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=0,max=1;

#pragma omp parallel
  {
#pragma omp task if(1)
    {
#pragma omp atomic
      a += 1;
    }
#pragma omp taskwait
#pragma omp task if(0)
    {
#pragma omp atomic
      a += 10;
    }
#pragma omp taskwait
  }

  
#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

  if (a != max + max * 10) {
    printf("NG:max(%d), a = %d\n",max,a);
  }
  printf("pass\n");
  return 0;
}
