
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int a;
#pragma omp threadprivate(a)

int main()
{
  int tid=0;

#pragma omp parallel
  {
#ifdef _OPENMP
    a = omp_get_thread_num();
#endif
  }

#pragma omp parallel
  {
#pragma omp task private(tid)
    {
#ifdef _OPENMP
      tid = omp_get_thread_num();
#endif
      if (a!=tid) printf("NG-1: tid=%d a=%d\n",tid,a);
    }
#pragma omp taskwait
  }

  
#pragma omp parallel private(tid)
  {
#ifdef _OPENMP
    tid = omp_get_thread_num();
#endif
    if (a!=tid) printf("NG-2: tid=%d a=%d\n",tid,a);
  }
  printf("pass\n");

  return 0;
}
