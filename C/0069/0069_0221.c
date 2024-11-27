
#define TASK_NUM 100
#include <stdio.h>

void sub2(int *sum)
{
#pragma omp atomic update
  *sum = *sum + 1;
}

void sub1(int *sum)
{
#pragma omp atomic update
  *sum = *sum + 1;
#pragma omp task
  {
    sub2(sum);
  }
}
 
int main(void)
{
  int i;
  int sum;
  
  sum = 0;

#pragma omp parallel private(i)
  {
#pragma omp single
    {
#pragma omp taskgroup
      {
      for(i = 0; i < TASK_NUM; i++){
#pragma omp task shared(sum)
        {
           sub1(&sum);
        }
      }
      }

      if(sum != TASK_NUM * 2) {
	printf("NG %d\n", sum);
      }

    }
  }

  printf("OK\n");

  return 0;
}
