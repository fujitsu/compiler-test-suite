#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int f(int x) {
  return x+1;
}

void test_00013_1(void) {
  int i, tnum;
  i = 0;

  try {
    try {
      i = f(i);
    } catch (int a) {
    }

    i = f(i);

#pragma omp parallel
    try {
#pragma omp critical
      i = f(i);
    } catch (int a) {
    }

  } catch (int a) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != tnum + 2) {
    printf("test_00013_1 ng i=%d, tnum=%d\n", i, tnum);
  }
}

int main(void) {
  test_00013_1();
  printf("pass\n");
}
