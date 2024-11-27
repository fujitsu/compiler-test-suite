
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

void test_a(int *a)
{
  int i;

  for(i = 0; i < TASK_NUM; i++) {
    if (a[i] != 1) {
      printf("NG\n");
    }
  }
}

void test_b(int *b)
{
  int i;

  for(i = 0; i < TASK_NUM; i++) {
    if (b[i] != 2) {
      printf("NG\n");
    }
  }
}

int main(void)
{
  int i;
  int a[TASK_NUM], b[TASK_NUM];

  init(a, b);

#pragma omp parallel private(i)
  {
#pragma omp sections
    {
#pragma omp section
      {
#pragma omp taskgroup
	{
      for(i = 0; i < TASK_NUM; i++){
#pragma omp task shared(a) firstprivate(i)
	  
	  {
#pragma omp atomic write
	    a[i] = 1;
	  }
	}
      }
	test_a(a);
      }

#pragma omp section
      {
#pragma omp taskgroup
	{
      for(i = 0; i < TASK_NUM; i++){
#pragma omp task shared(b) firstprivate(i)
	  
	  {
#pragma omp atomic write
	    b[i] = 2;
	  }
	}
      }
	test_b(b);
      }

    }
  }

  printf("OK\n");

  return 0;
}

