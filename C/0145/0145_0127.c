
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a,i;
#pragma omp parallel
  {
#pragma omp for lastprivate(a)
    for (i=0;i<10;i++) {
      a = 10;
#pragma omp task
      {
	if (a==10) {
	  a += i;
	} else {
#ifdef _OPENMP
	  printf("NG:task[%d] %3dcounts a = %d\n",omp_get_thread_num(),i,a);
#endif
	}
      }
#pragma omp taskwait
      if (a!=10) {
#ifdef _OPENMP
	  printf("NG:task[%d] %3dcounts a = %d\n",omp_get_thread_num(),i,a);
#endif
      }
    }
  }

  
  printf("pass\n");

  return 0;
}
