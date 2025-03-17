
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void sub()
{
  static int a=5;
  int i,tid=0;

#ifdef _OPENMP
  tid = omp_get_thread_num();
#endif

#pragma omp for private(a)
  for (i=0;i<10;i++) {
    a = 10;
#pragma omp task
    {
      if (a==10) {
	a += i;
      } else {
	printf("NG(%d) %dcounts:a = %d\n",tid,i,a);
      }
    }
#pragma omp taskwait
    if (a!=10) printf("NG(%d) %dcounts:a = %d\n",tid,i,a);
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
