#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main() {
  const int ci = 10;
  volatile int vi = 10;
  int i;
  int work = 0;
  int num = 11;

#ifdef _OPENMP
  num = omp_get_max_threads() + 10;
#endif

#pragma omp parallel
#pragma omp critical
  i = ++((int &)ci);

  if (ci == 10 && i == num) {
#pragma omp parallel
#pragma omp critical
    i = ++((int &)vi);
#pragma omp parallel
    if (vi == num && i == num) {
#pragma omp parallel
      ;
    } else
#pragma omp parallel
      work = 2;
  } else
#pragma omp parallel
    work = 1;

  if (!work)
    printf("ok\n");
  else if (work == 1)
    printf("ng1 ci=%d i=%d \n", ci, i);
  else
    printf("ng2  vi=%d i=%d \n", vi, i);
}
