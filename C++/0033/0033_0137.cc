#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
static union {
  union {
    double d4;
  };
};
int main() {
  int work = 0, num = 1;
#pragma omp parallel
  d4;
#pragma omp parallel
#pragma omp atomic
  work++;
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if (work == num)
    printf("ok\n");
  else
    printf("ng\n");
}
