
#include <stdio.h>

int sub()
{
  static int a=0,i;

#pragma omp for
  for (i=0;i<10;i++) {
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
  int ret;

#pragma omp parallel
  {
    ret = sub();
  }

  
  if (ret != 10) {
    printf("NG:ret = %d\n",ret);
  }
  printf("pass\n");
  return 0;
}
