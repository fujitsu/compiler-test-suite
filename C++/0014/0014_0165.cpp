#define TASK_NUM 100000
#include <stdio.h>

void init(int *a, int *b) {
  int i;
  for (i = 0; i < TASK_NUM; i++) {
    a[i] = 0;
    b[i] = 0;
  }
}

void test_a(int *a) {
  int i;

  for (i = 0; i < TASK_NUM; i++) {
    if (a[i] != 1) {
      printf("NG\n");
    }
  }
}

void test_b(int *b) {
  int i;

  for (i = 0; i < TASK_NUM; i++) {
    if (b[i] != 2) {
      printf("NG\n");
    }
  }
}

void sub1(int *a) {
  int i;

#pragma omp taskgroup
  {
    for (i = 0; i < TASK_NUM; i++) {
#pragma omp task shared(a) firstprivate(i)
      {
#pragma omp atomic write
        a[i] = 1;
      }
    }
  }
}

void sub2(int *b) {
  int i;

#pragma omp taskgroup
  {
    for (i = 0; i < TASK_NUM; i++) {
#pragma omp task shared(b) firstprivate(i)
      {
#pragma omp atomic write
        b[i] = 2;
      }
    }
  }
}

int test(int *a, int *b) {
  int i, flag;
  flag = 0;
  for (i = 0; i < TASK_NUM; i++) {
    if (a[i] != 1 || b[i] != 2) {
      flag = 1;
    }
  }
  return flag;
}

int main(void) {
  int a[TASK_NUM], b[TASK_NUM];

  init(a, b);

#pragma omp parallel
  {
#pragma omp sections
    {
#pragma omp section
      {
        sub1(a);
        test_a(a);
      }
#pragma omp section
      {
        sub2(b);
        test_b(b);
      }
    }
  }

  printf("OK\n");

  return 0;
}
