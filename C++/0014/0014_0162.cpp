#define TASK_NUM 100
#include <stdio.h>

int main(void) {
  int i, j, k;
  int sum1, sum2;
  sum1 = 0;
  sum2 = 0;

#pragma omp parallel private(i)
  {
#pragma omp single
    {
      for (i = 0; i < 2; i++) {
#pragma omp task firstprivate(sum1, sum2, j, k)
        {
#pragma omp taskgroup
          {
            for (j = 0; j < TASK_NUM; j++) {
#pragma omp task shared(sum1)
              {
#pragma omp atomic update
                sum1 = sum1 + 1;
              }
            }
          }
          if (sum1 != TASK_NUM) {
            printf("NG %d\n", sum1);
          }

#pragma omp taskgroup
          {
            for (k = 0; k < TASK_NUM; k++) {
#pragma omp task shared(sum2)
              {
#pragma omp atomic update
                sum2 = sum2 + 1;
              }
            }
          }
          if (sum2 != TASK_NUM) {
            printf("NG %d\n", sum2);
          }
        }
      }
    }
  }

  printf("OK\n");

  return 0;
}
