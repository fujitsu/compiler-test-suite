

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int cnt=0, max=1;

#pragma omp parallel
    {
#pragma omp task
      {
#pragma omp atomic
	cnt += 1;
      }
#pragma omp taskwait
    }

  
#ifdef _OPENMP
  max = omp_get_max_threads();
#endif
  if (cnt != max) {
    printf("NG:cnt = %3d / max = %3d\n", cnt, max);
  }
  printf("pass\n");
  return 0;
}
