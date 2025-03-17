

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=0,b=5,c=10,max=1,tid=1;

#pragma omp parallel
  {
#ifdef _OPENMP
    tid = omp_get_thread_num();
#endif

#pragma omp task if(tid%2) default(none) shared(a) private(b) firstprivate(c)
    {
#pragma omp atomic
      a += 1;
      b += 5;
      if (c!=10) {
	printf("NG:c=%d\n",c);
      }
    }
#pragma omp taskwait
    if (b!=5) printf("NG:b=%d\n",b);
    if (c!=10) printf("NG:c=%d\n",c);
  }

  
#ifdef _OPENMP
  max = omp_get_max_threads();
#endif
  if (a != max) {
    printf("NG:max(%d), a = %d\n",max,a);
  }
  printf("pass\n");

  return 0;
}
