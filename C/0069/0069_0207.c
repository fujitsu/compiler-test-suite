
#define TASK_NUM 100000
#include <stdio.h>

void init(int *a, int *b)
{
  int i;
  for(i = 0; i < TASK_NUM; i++) {
    a[i] = 0;
    b[i] = 0;
  }
}

void sub(int *a, int *b)
{
  int i;
#pragma omp taskgroup
  {
#pragma omp sections
    {
#pragma omp section
    for(i = 0; i < TASK_NUM; i++){
#pragma omp task shared(a)
        {
	a[i] = 1;
        }
      }

#pragma omp section
    for(i = 0; i < TASK_NUM; i++){
#pragma omp task shared(b)
        {
	b[i] = 2;
        }
      }
    }
  }
}

int test(int *a, int *b)
{
  int i, flag;
  flag = 0;
  for(i = 0; i < TASK_NUM; i++) {
    if (a[i] != 1 || b[i] != 2) {
      flag = 1;
    }
  }
  return flag;
}

int main(void)
{
  int flag;
  int a[TASK_NUM], b[TASK_NUM];

  init(a, b);

#pragma omp parallel
  {
    sub(a, b);
    flag = test(a, b);
  }
      
  if(flag == 1) {
    printf("NG\n");
  }
  printf("OK\n");

  return 0;
}
