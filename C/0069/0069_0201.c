
#define TASK_NUM 100
#include <stdio.h>

void init(int *a)
{
  int i;
  for(i = 0; i < TASK_NUM; i++) {
    a[i] = 0;
  }
}

void sub(int *a)
{
  int i;

  for(i = 0; i < TASK_NUM; i++){
#pragma omp taskgroup
    {
#pragma omp task shared(a)
      {
	a[i] = 1;
      }
    }
  }
}

int test(int *a)
{
  int i, flag;
  flag = 0;
  for(i = 0; i < TASK_NUM; i++) {
    if (a[i] != 1) {
      flag += 1;
    }
  }
  return flag;
}

int main(void)
{
  int flag;
  int a[TASK_NUM];

#pragma omp parallel
  {
#pragma omp critical
    {
      init(a);
      sub(a);
      flag = test(a);
    }
  }

  if(flag != 0) {
    printf("NG %d\n", flag);
  }

  printf("OK\n");

  return 0;
}
