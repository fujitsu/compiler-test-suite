

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=10,cnt=0,max=1;
#pragma omp parallel firstprivate(a)
  {
#pragma omp task
    {
      if (a == 10) {
	a += 15;
#pragma omp atomic
	cnt += 1;
      }
    }
#pragma omp taskwait
    if (a != 10) {
      printf("NG:parallel a =%d\n",a);
    }
  }

  
#ifdef _OPENMP
  max = omp_get_max_threads();
#endif
  if (a != 10 || cnt != max) {
    printf("NG: a = %3d / cnt = %3d / max = %3d\n",a,cnt,max);
  }
  printf("pass\n");
  return 0;
}
