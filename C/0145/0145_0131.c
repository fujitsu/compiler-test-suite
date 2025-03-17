

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int i,a = 5;

#pragma omp parallel firstprivate(a)
  {
#pragma omp for private(a)
    for (i=0;i<10;i++) {
      a = i;
#pragma omp task
      {
	if (a == i) {
	  a += i;
	} else {
#ifdef _OPENMP
	  printf("NG:task[%d] %3dcounts a = %d\n",omp_get_thread_num(),i,a);
#endif
	}
      }
#pragma omp taskwait
#ifdef _OPENMP
      if (a != i) printf("NG:for[%d] %3dcounts a = %d\n",omp_get_thread_num(),i,a);
#endif
    }
  }

  
  if (a != 5) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
