#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int x = 0;

void f(int *p, int i) {
#pragma omp parallel
  if (*p == i)
    x++;
}

void f(const int *pc, int i) {
#pragma omp parallel
  if (*pc == i)
    x++;
}

void f(volatile int *pv, int i) {
#pragma omp parallel
  if (*pv == i)
    x++;
}
int main() {
  int i;
  const int ci = 3;
  volatile int vi;

#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  i = 5;
#pragma omp parallel
  vi = 2;

#pragma omp parallel
  f(&i, 5);
#pragma omp parallel
  if (x == 1)
#pragma omp parallel
  {
#pragma omp parallel
    f(&ci, 3);
#pragma omp parallel
    if (x == 2)
#pragma omp parallel
    {
#pragma omp parallel
      f(&vi, 2);
#pragma omp parallel
      if (x == 3)
#pragma omp parallel
        printf("ok\n");
      else
#pragma omp parallel
        printf("ng\n");
    } else
#pragma omp parallel
      printf("ng\n");
  } else
#pragma omp parallel
    printf("ng\n");
}
