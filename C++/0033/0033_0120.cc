#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int work = 0;
int main() {
  int func();
  int num = 1;

#pragma omp parallel
  func();

#ifdef _OPENMP
  if (!omp_get_dynamic() && omp_get_nested()) {
    num = pow(omp_get_max_threads(), 2);
  } else if (omp_get_nested()) {
    if (omp_get_num_procs() < pow(omp_get_max_threads(), 2)) {
      num = omp_get_num_procs();
    } else {
      num = pow(omp_get_max_threads(), 2);
    }
  } else {
    num = omp_get_max_threads();
  }
#endif
  if (work == num)
    printf("ok\n");
  else
    printf("ng\n");
}

int func() {
#pragma omp parallel
#pragma omp atomic
  work++;
  return 0;
}
