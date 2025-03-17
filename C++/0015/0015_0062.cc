#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int f(int x) {
  return x+1;
}
int ft(int x) {
  if (x < 2) {
    throw x+1;
  }
  return x+1;
}

int main(void) {
  int i, tnum;
  i = 0;
  try {
    i = f(i);
    try {
      i = ft(i);
    } catch (int a) {
      i = a;
#pragma omp parallel
#pragma omp critical
      i = ft(i);
#pragma omp parallel
      {
#pragma omp critical
 i = ft(i);
      }
    }
  } catch (...) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != 2*tnum + 2) {
    printf("test_00030 ng i=%d, tnum=%d\n", i, tnum);
  }
  printf("pass\n");
}
