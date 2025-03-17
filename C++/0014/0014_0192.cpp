#define TASK_NUM 100
#include <omp.h>
#include <stdio.h>

int main(void) {
  int i, n_threads, sum;
  sum = 0;

#pragma omp parallel
  {
#pragma omp master
    n_threads = omp_get_num_threads();
  }

#pragma omp parallel num_threads(n_threads)
  {
#pragma omp parallel num_threads(n_threads) private(i)
    {
#pragma omp single
      {
#pragma omp taskgroup
        {
          for (i = 0; i < TASK_NUM; i++) {
#pragma omp task shared(sum)
            {
#pragma omp atomic update
              sum = sum + 1;
            }
          }
        }
      }
    }
  }

  if (sum != (TASK_NUM * n_threads)) {
    printf("NG %d\n", sum);
  }
  printf("OK\n");

  return 0;
}
