

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=10,cnt=0,max=1;
#pragma omp parallel private(a)
  {
    a = 5;
#pragma omp task
    {
      if (a == 5) {
	a += 5;
#pragma omp atomic
	cnt += 1;
      }
    }
#pragma omp taskwait
    if ( a != 5) {
      printf("NG:parallel a = %d\n",a);
    }
  }

  
#ifdef _OPENMP
  max = omp_get_max_threads();
#endif
  if ( a != 10 || cnt != max) {
    printf("NG: a = %3d / cnt = %3d / max = %3d\n",a,cnt,max);
  }
  printf("pass\n");
  return 0;
}
