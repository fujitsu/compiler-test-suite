

#include <stdio.h>

int a = 5;

void sub()
{
  int i;

#pragma omp for
  for (i=0;i<10;i++) {
    {
#pragma omp task
      {
#pragma omp atomic
        a += 1;
      }
#pragma omp taskwait
    }
  }
}

int main()
{
#pragma omp parallel
  {
    sub();
  }

  
  if (a!=15) {
    printf("NG:a=%d\n",a);
  }
  printf("pass\n");
  return 0;
}
