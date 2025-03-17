







#include <complex.h>
#include <stdio.h>
#include <omp.h>
void sub1() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel shared(fc,dc,lc)
  {
    if (creal(fc[9]) != 1.0) printf("sub1 ng creal(fc[9]): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub1 ng cimag(fc[9]): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub1 ng creal(dc[9]): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub1 ng cimag(dc[9]): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub1 ng creal(lc[9]): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub1 ng cimag(lc[9]): %e\n", cimag(lc[9]));
  }
}

void sub2() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel
  {
    if (creal(fc[9]) != 1.0) printf("sub2 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub2 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub2 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub2 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub2 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub2 ng cimag(lc): %e\n", cimag(lc[9]));
  }
}

void sub3() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  
#pragma omp parallel private(fc,dc,lc)
  {
    fc[9] = 1.0 + I * 2.0;
    dc[9] = 1.0 + I * 2.0;
    lc[9] = 1.0 + I * 2.0;
    if (creal(fc[9]) != 1.0) printf("sub3 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub3 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub3 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub3 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub3 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub3 ng cimag(lc): %e\n", cimag(lc[9]));
  }
}

void sub4() {
  
#pragma omp parallel
  {
    float _Complex fc[10];
    double _Complex dc[10];
    long double _Complex lc[10];
    fc[9] = 1.0 + I * 2.0;
    dc[9] = 1.0 + I * 2.0;
    lc[9] = 1.0 + I * 2.0;
    if (creal(fc[9]) != 1.0) printf("sub4 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub4 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub4 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub4 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub4 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub4 ng cimag(lc): %e\n", cimag(lc[9]));
  }
}

void sub5() {
  
#pragma omp parallel default(none)
  {
    float _Complex fc[10];
    double _Complex dc[10];
    long double _Complex lc[10];
    fc[9] = 1.0 + I * 2.0;
    dc[9] = 1.0 + I * 2.0;
    lc[9] = 1.0 + I * 2.0;
    if (creal(fc[9]) != 1.0) printf("sub5 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub5 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub5 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub5 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub5 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub5 ng cimag(lc): %e\n", cimag(lc[9]));
  }
}

void sub6() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel firstprivate(fc,dc,lc)
  {
    if (creal(fc[9]) != 1.0) printf("sub6 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub6 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub6 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub6 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub6 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub6 ng cimag(lc): %e\n", cimag(lc[9]));
    fc[9] = 1.1 + I * 2.2;
    dc[9] = 1.1 + I * 2.2;
    lc[9] = 1.1 + I * 2.2;
  }
  if (creal(fc[9]) != 1.0) printf("sub6 ng creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub6 ng cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub6 ng creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub6 ng cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub6 ng creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub6 ng cimag(lc): %e\n", cimag(lc[9]));
}

void sub7() {
  static float _Complex fc[10];
  static double _Complex dc[10];
  static long double _Complex lc[10];
#pragma omp threadprivate(fc, dc, lc)
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel copyin(fc, dc, lc)
  {
    if (creal(fc[9]) != 1.0) printf("sub7 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub7 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub7 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub7 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub7 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub7 ng cimag(lc): %e\n", cimag(lc[9]));
  }
}

int main() {
  sub1();
  sub2();
  sub3();
  sub4();
  sub5();
  sub6();
  sub7();
  printf("pass\n");
  return 0;
}
