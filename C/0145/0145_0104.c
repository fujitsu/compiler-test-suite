#include <stdio.h>

int main(void)
{
#pragma omp parallel
  {
    printf("parallel head \n");
#pragma omp master
    {
      printf("master\n");
    }
    printf("parallel tail \n");
  }
  printf("ok \n");
  return 0;
}
