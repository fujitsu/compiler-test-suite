#define TASK_NUM 100000
#include <stdio.h>

void init(int *a) {
  int i;
  for (i = 0; i < TASK_NUM; i++) {
    a[i] = 0;
  }
}

void sub(int *a, int i) {
#pragma omp taskgroup
  {
#pragma omp task shared(a)
    { a[i] = 1; }
  }

  if (a[i] == 0) {
    printf("NG %d\n", i);
  }
}

int test(int *a) {
  int i, flag;
  flag = 0;
  for (i = 0; i < TASK_NUM; i++) {
    if (a[i] != 1) {
      flag = 1;
    }
  }
  return flag;
}

int main(void) {
  int i, flag;
  int a[TASK_NUM];

  init(a);

#pragma omp parallel private(i)
  {
    for (i = 0; i < TASK_NUM; i++) {
#pragma omp task shared(a)
      { sub(a, i); }
    }
  }

  flag = test(a);

  if (flag == 1) {
    printf("NG\n");
  }
  printf("OK\n");

  return 0;
}
