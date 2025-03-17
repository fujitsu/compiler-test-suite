

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int sub()
{
  static int a=5;
  int i,tid=0;

#ifdef _OPENMP
  tid = omp_get_thread_num();
#endif

#pragma omp for lastprivate(a)
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
  }
  return a;
}

int main()
{
  int a;

#pragma omp parallel
  {
    a = sub();
  }

  
  if (a!=10) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
