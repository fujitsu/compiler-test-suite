

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void sub()
{
  int i,a=5,tid=0;

#ifdef _OPENMP
  tid = omp_get_thread_num();
#endif

#pragma omp for
  for (i=0;i<10;i++) {
#pragma omp task
    {
      if (a==5) {
	a += i;
      } else {
	printf("NG(%d) %dcounts:a = %d\n",tid,i,a);
      }
    }
#pragma omp taskwait
    if (a!=5) printf("NG(%d) %dcounts:a = %d\n",tid,i,a);
  }
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
