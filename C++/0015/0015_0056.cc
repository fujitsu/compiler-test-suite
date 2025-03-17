#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int f(int x) {
  return x+1;
}
int ft(int x) {
  if (x != -1) {
    throw x+1;
  }
  return x+1;
}

void test_00024_1(void) {
  int i;
  i = 0;

  try {
    i = f(i);
  } catch (int a) {

    try {
      i = f(i);
    } catch (int a) {
    }

#pragma omp parallel
    try {
#pragma omp critical
      i = f(i);
      try {
#pragma omp critical
 i = f(i);
      } catch (int a) {
      }
    } catch (int a) {
      try {
#pragma omp critical
 i = f(i);
      } catch (int a) {
      }
    }

    try {
      i = f(i);
    } catch (int a) {
    }

  }

  if (i != 1) {
    printf("test_00024_1 ng i=%d\n", i);
  }
}

void test_00024_2(void) {
  int i, tnum;
  i = 0;

  try {
    i = ft(i);
  } catch (int a) {

    try {
      i = f(i);
    } catch (int a) {
    }

#pragma omp parallel
    try {
#pragma omp critical
      i = f(i);
      try {
#pragma omp critical
 i = f(i);
      } catch (int a) {
      }
    } catch (int a) {
      try {
#pragma omp critical
 i = f(i);
      } catch (int a) {
      }
    }

    try {
      i = f(i);
    } catch (int a) {
    }

  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != 2*tnum + 2) {
    printf("test_00024_2 ng i=%d, tnum=%d\n", i, tnum);
  }
}

int main(void) {
  test_00024_1();
  test_00024_2();
  printf("pass\n");
}
