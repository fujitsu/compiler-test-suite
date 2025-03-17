#include <stdio.h>
#include <omp.h>

int main()
{
  int a=0,i;

#ifdef _OPENMP
  omp_set_schedule(omp_sched_auto, 1);
#endif

#pragma omp parallel
  {
#pragma omp for schedule(runtime)
    for (i=0;i<100;i++) {
#pragma omp atomic
      a++;
    }
  }
  if (a != 100) printf("NG : a = %d\n");
  printf("pass\n");
  return 0;
}
