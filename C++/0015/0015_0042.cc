#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int f(int x) {
  return x+1;
}

void test_00010_1(void) {
  int i, tnum;
  i = 0;

  try {
    i = f(i);
#pragma omp parallel
    try {
#pragma omp critical
      i = f(i);
      try {
#pragma omp critical
 i = f(i);
      } catch (int a) {
      }
    } catch (...) {
    }
  } catch (int a) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != 2*tnum + 1) {
    printf("test_00010_1 ng i=%d, tnum=%d\n", i, tnum);
  }
}

void test_00010_2(void) {
  int i, tnum;
  i = 0;

  try {
    i = f(i);
#pragma omp parallel
    try {
#pragma omp critical
      i = f(i);
    } catch (...) {
      try {
#pragma omp critical
 i = f(i);
      } catch (int a) {
      }
    }
  } catch (int a) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != tnum + 1) {
    printf("test_00010_2 ng i=%d, tnum=%d\n", i, tnum);
  }
}

int main(void) {
  test_00010_1();
  test_00010_2();
  printf("pass\n");
}
