

#include <stdio.h>

static int a;

void sub()
{
#pragma omp task
  {
#pragma omp critical
    {
      a = 10;
    }
  }
#pragma omp taskwait
}

int main()
{
  a=5;
#pragma omp parallel
  {
    sub();
  }

  
  if (a!=10) {
    printf("NG:a=%d\n",a);
  }
  printf("pass\n");
  return 0;
}
