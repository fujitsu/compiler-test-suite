

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void sub()
{
 int a = 5,tid = 0;

#ifdef _OPENMP
  tid = omp_get_thread_num();
#endif

#pragma omp task
  {
    if (a==5) {
      a += 10;
    } else {
      printf("NG(%d):a = %d\n",tid,a);
    }
  }
#pragma omp taskwait
  if (a!=5) printf("NG(%d):a = %d\n",tid,a);
}

int main()
{
#pragma omp parallel
  {
    sub();
  }

  
  printf("pass\n");

  return 0;
}
