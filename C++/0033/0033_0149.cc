#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int x = 0;

void f(int &r, int i) {
#pragma omp parallel
  if (r == i)
    x++;
}

void f(const int &cr, int i) {
#pragma omp parallel
  if (cr == i)
    x++;
}

void f(volatile int &vr, int i) {
#pragma omp parallel
  if (vr == i)
    x++;
}
int main() {
  int i;
  int &ri = i;
  const int ci = 3;
  const int &rci = ci;
  volatile int vi;
  volatile int &rvi = vi;
  int work = 0;

#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  i = 5;
#pragma omp parallel
  vi = 2;

#pragma omp parallel
  f(ri, 5);
#pragma omp parallel
  if (x == 1)
#pragma omp parallel
  {
#pragma omp parallel
    f(rci, 3);
#pragma omp parallel
    if (x == 2)
#pragma omp parallel
    {
#pragma omp parallel
      f(rvi, 2);
#pragma omp parallel
      if (x == 3)
#pragma omp parallel
        ;
      else
#pragma omp parallel
        work = 3;
    } else
#pragma omp parallel
      work = 2;
  } else
#pragma omp parallel
    work = 1;

  if (!work)
    printf("ok\n");
  else if (work == 1)
    printf("ng1 %d\n", x);
  else if (work == 2)
    printf("ng2 %d\n", x);
  else
    printf("ng3 %d\n", x);
}
