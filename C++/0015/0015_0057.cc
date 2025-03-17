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
    try {
      i = f(i);
    } catch (int a) {
    }
    try {
      i = f(i);
    } catch (int a) {
    }
  } catch (...) {
  }
#pragma omp parallel
  try {
    try {
#pragma omp critical
      i = f(i);
    } catch (int a) {
    }
    try {
#pragma omp critical
      i = f(i);
    } catch (int a) {
    }
  } catch (...) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != 2*tnum + 2) {
    printf("test_00025 ng i=%d, tnum=%d\n", i, tnum);
  }
  printf("pass\n");
}
