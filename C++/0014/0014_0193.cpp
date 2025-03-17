#define TASK_NUM 100
#include <omp.h>
#include <stdio.h>

int main(void) {
  int i, j, n_threads;
  int sum[2];

#pragma omp parallel
  {
#pragma omp master
    n_threads = omp_get_num_threads();
  }

#pragma omp parallel num_threads(n_threads) private(sum)
  {
#pragma omp parallel num_threads(n_threads) private(i) shared(sum)
    {
#pragma omp single
      {
        for (i = 0; i < 2; i++) {
          sum[i] = 0;
#pragma omp task private(j)
          {
#pragma omp taskgroup
            {
              for (j = 0; j < TASK_NUM; j++) {
#pragma omp task
                {
#pragma omp atomic update
                  sum[i] = sum[i] + 1;
                }
              }
            }
            if (sum[i] != TASK_NUM)
              printf("NG %d\n", sum[i]);
          }
        }
      }
    }
  }

  printf("OK\n");

  return 0;
}
