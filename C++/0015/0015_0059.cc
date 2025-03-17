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
      try {
 i = f(i);
      } catch (int a) {
      }
    } catch (int a) {
    }
#pragma omp parallel
    {
      try {
#pragma omp critical
 i = f(i);
 try {
#pragma omp critical
   i = f(i);
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
 } catch (int a) {
 }
      } catch (int a) {
      }
      try {
#pragma omp critical
 i = f(i);
 try {
#pragma omp critical
   i = f(i);
 } catch (int a) {
 }
      } catch (int a) {
      }
    }

    try {
      i = f(i);
      try {
 i = f(i);
      } catch (int a) {
      }
    } catch (int a) {
    }
  } catch (...) {
  }

  try {
    i = f(i);
  } catch (int a) {
  }

  tnum = 1;
#ifdef _OPENMP
  tnum = omp_get_max_threads();
#endif
  if (i != 6*tnum + 5) {
    printf("test_00027 ng i=%d, tnum=%d\n", i, tnum);
  }
  printf("pass\n");
}
