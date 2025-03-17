

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=0,max=1;

#ifdef _OPENMP
  omp_set_dynamic(0);
  
  omp_set_max_active_levels(2) ;
  omp_set_num_threads(2);
#endif

#pragma omp parallel
  {
#pragma omp parallel
    {
#pragma omp task
      {
#pragma omp task
	{
#pragma omp atomic
	  a += 1;
	}
#pragma omp taskwait
      }
#pragma omp taskwait
    }
  }

  
#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

  if (a != max*max) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
