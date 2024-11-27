
#define TASK_NUM 100000
#include <stdio.h>

void init(int *a)
{
  int i;
  for(i = 0; i < TASK_NUM; i++) {
    a[i] = 1;
  }
}

int sub(int *a)
{
  int sum, i;
  sum = 0;
  for(i = 0; i < TASK_NUM; i++){
#pragma omp taskgroup
    {
#pragma omp atomic update
      sum += a[i];
    }
  }
  return sum;
}

int main(void)
{
  int a[TASK_NUM];
  int sum;

  init(a);

#pragma omp parallel
#pragma omp single  
  {
    sum = sub(a);
  }
      
  if(sum != TASK_NUM) {
    printf("NG\n");
  }
  printf("OK\n");

  return 0;
}
