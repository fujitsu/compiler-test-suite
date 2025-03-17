

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int sub()
{
  static int a=0;
#pragma omp sections
  {
#pragma omp task
    {
#pragma omp task
      {
#pragma omp atomic
	a += 1;
      }
    }
#pragma omp section
#pragma omp task
    {
#pragma omp task
      {
#pragma omp atomic
	a += 1;
      }
    }
  }
  return a;
}

int main()
{
  int ret=0;

#pragma omp parallel
  {
    ret = sub();
  }

  
  if (ret != 2) {
    printf("NG:ret = %d\n",ret);
  }
  printf("pass\n");
  return 0;
}
