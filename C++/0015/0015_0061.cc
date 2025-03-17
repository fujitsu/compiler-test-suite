#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int f(int x) {
  return x+1;
}

int main(void) {
  int i, tnum;
  i = 0;
  try {
#pragma omp parallel
#pragma omp critical
    i = f(i);
#pragma omp parallel
      {
#pragma omp critical
 i = f(i);
      }
  } catch (...) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != 2*tnum) {
    printf("test_00029 ng i=%d, tnum=%d\n", i, tnum);
  }
  printf("pass\n");
}
