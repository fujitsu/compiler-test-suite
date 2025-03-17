
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int a=0,b=0,i,tid=0;

#pragma omp parallel
  {
#pragma omp for
    for (i=0;i<10;i++) {
#pragma omp task if (1) untied default(shared) private(tid)
      {
#ifdef _OPENMP
	tid = omp_get_thread_num();
#endif
#pragma omp task if(tid%2) untied default(none) shared(a) firstprivate(tid) private(b)
	{
#pragma omp atomic
	  a += 1;
	  b = tid;
	}
#pragma omp taskwait
      }
#pragma omp taskwait
    }
  }

  
  if (a != 10 || b != 0 || tid != 0) {
    printf("NG:a=%d b=%d tid=%d\n",a,b,tid);
  }
  printf("pass\n");
  return 0;
}
