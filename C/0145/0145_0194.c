




#include <complex.h>
#include <stdio.h>
#define ITER 100
void sub1() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp for private(fc,dc,lc)
    for (i = 0; i < ITER; i++) {
      fc[i] = i + I * 1.0;
      dc[i] = i + I * 1.0;
      lc[i] = i + I * 1.0;
      if (creal(fc[i]) != i  ) printf("sub2 ng1 creal(fc): %e\n", creal(fc[i]));
      if (cimag(fc[i]) != 1.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc[i]));
      if (creal(dc[i]) != i  ) printf("sub2 ng1 creal(dc): %e\n", creal(dc[i]));
      if (cimag(dc[i]) != 1.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc[i]));
      if (creal(lc[i]) != i  ) printf("sub2 ng1 creal(lc): %e\n", creal(lc[i]));
      if (cimag(lc[i]) != 1.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc[i]));
    }
    if (creal(fc[9]) != 1.0) printf("sub1 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub1 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub1 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub1 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub1 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub1 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
}

void sub2() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp for
    for (i = 0; i < ITER; i++) {
      float _Complex fc[ITER];
      double _Complex dc[ITER];
      long double _Complex lc[ITER];
      fc[i] = i + I * 1.0;
      dc[i] = i + I * 1.0;
      lc[i] = i + I * 1.0;
      if (creal(fc[i]) != i  ) printf("sub2 ng1 creal(fc): %e\n", creal(fc[i]));
      if (cimag(fc[i]) != 1.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc[i]));
      if (creal(dc[i]) != i  ) printf("sub2 ng1 creal(dc): %e\n", creal(dc[i]));
      if (cimag(dc[i]) != 1.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc[i]));
      if (creal(lc[i]) != i  ) printf("sub2 ng1 creal(lc): %e\n", creal(lc[i]));
      if (cimag(lc[i]) != 1.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc[i]));
    }
    if (creal(fc[9]) != 1.0) printf("sub2 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub2 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub2 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub2 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub2 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub2 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
}

void sub3() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  for (i = 0; i < ITER; i++) {
    fc[i] = i + I * 2.0;
    dc[i] = i + I * 2.0;
    lc[i] = i + I * 2.0;
  }
#pragma omp parallel
  {
    
#pragma omp for firstprivate(fc,dc,lc)
    for (i = 0; i < ITER; i++) {
      if (creal(fc[i]) != i  ) printf("sub3 ng creal(fc): %e\n", creal(fc[i]));
      if (cimag(fc[i]) != 2.0) printf("sub3 ng cimag(fc): %e\n", cimag(fc[i]));
      if (creal(dc[i]) != i  ) printf("sub3 ng creal(dc): %e\n", creal(dc[i]));
      if (cimag(dc[i]) != 2.0) printf("sub3 ng cimag(dc): %e\n", cimag(dc[i]));
      if (creal(lc[i]) != i  ) printf("sub3 ng creal(lc): %e\n", creal(lc[i]));
      if (cimag(lc[i]) != 2.0) printf("sub3 ng cimag(lc): %e\n", cimag(lc[i]));
    }
  }
}

void sub4() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp for lastprivate(fc,dc,lc)
    for (i = 0; i < ITER; i++) {
      fc[9] = i + I * i;
      dc[9] = i + I * i;
      lc[9] = i + I * i;
    }
    if (creal(fc[9]) != ITER-1) printf("sub4 ng creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != ITER-1) printf("sub4 ng cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != ITER-1) printf("sub4 ng creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != ITER-1) printf("sub4 ng cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != ITER-1) printf("sub4 ng creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != ITER-1) printf("sub4 ng cimag(lc): %e\n", cimag(lc[9]));
  }
}

int main() {
  sub1();
  sub2();
  sub3();
  sub4();
  printf("pass\n");
  return 0;
}
