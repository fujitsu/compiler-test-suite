#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main() {
  int a;
  int work = 0, num = 1;
#pragma omp parallel
  a = 10;
#pragma omp parallel
  if (a = 10)
#pragma omp parallel
#pragma omp atomic
    work++;

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
    printf(" ok \n");
  else
    printf(" ng \n");
}
