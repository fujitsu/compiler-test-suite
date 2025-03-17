

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int a;
#pragma omp threadprivate(a)

void sub()
{
  int tid=1;

#pragma omp task
  {
#ifdef _OPENMP
    tid = omp_get_thread_num();
#endif
    if (a!=tid) {
      printf("NG:task ( %2d ) - 1 : &a = %11lx, a = %3d\n",tid,&a,a);
    }
  }
}

int main()
{
  int tid=1;

#pragma omp parallel
  {
#ifdef _OPENMP
    tid = omp_get_thread_num();
#endif
    a = tid;
    sub();
  }

  
  printf("pass\n");

  return 0;
}
