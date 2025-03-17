#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main() {
  const long long int i = 1;
  int work = 0;
  int num = 1;

#pragma omp parallel
  (double &)i = 2;
#pragma omp parallel
  if (*(double *)&i == 2)
#pragma omp parallel
#pragma omp atomic
    work++;
  else
#pragma omp parallel
    printf("ng %d \n", (double &)i);

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

  if (num == work)
    printf("ok\n");
  else
    printf("ng\n");
}
