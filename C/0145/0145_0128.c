
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a = 5,i;

#pragma omp parallel private(a)
  {
    a = 10;
#pragma omp for
    for (i=0;i<10;i++) {
#pragma omp task
      {
	if (a == 10) {
	  a += i;
	} else {
#ifdef _OPENMP
	  printf("NG:task[%d] %3dcounts a = %d\n",omp_get_thread_num(),i,a);
#endif
	}
      }
#pragma omp taskwait
#ifdef _OPENMP
      if (a!=10) printf("NG:for[%d] %3dcounts a = %d\n",omp_get_thread_num(),i,a);
#endif
    }
  }

  
  if (a != 5) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
