
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int a;
#pragma omp threadprivate(a)

int main()
{
  int i;

#ifdef _OPENMP
  omp_set_dynamic(0);
  setenv("OMP_NESTED","TRUE",1);
  omp_set_num_threads(2);
#endif

#pragma omp parallel
  {
#pragma omp parallel
    {
#pragma omp task
#pragma omp critical
      {
	a = 10;
        for (i=0;i<10000;i++) {
	  a += 1;
	}
	if (a!=10010) {
	  printf("NG:a = %d [$%lx]\n",a,&a);
	}
      }
    }
  }

  
  printf("pass\n");

  return 0;
}
