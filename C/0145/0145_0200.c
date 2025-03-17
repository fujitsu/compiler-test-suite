








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
  
#pragma omp parallel for private(fc,dc,lc)
  for (i = 0; i < ITER; i++) {
    fc[i] = i + I * 1.0;
    dc[i] = i + I * 1.0;
    lc[i] = i + I * 1.0;
    if (creal(fc[i]) != i  ) printf("sub1 ng1 creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 1.0) printf("sub1 ng1 cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub1 ng1 creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 1.0) printf("sub1 ng1 cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub1 ng1 creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 1.0) printf("sub1 ng1 cimag(lc): %e\n", cimag(lc[i]));
  }
  if (creal(fc[9]) != 1.0) printf("sub1 ng2 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub1 ng2 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub1 ng2 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub1 ng2 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub1 ng2 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub1 ng2 cimag(lc): %e\n", cimag(lc[9]));
}

void sub2() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel for
  for (i = 0; i < ITER; i++) {
    float _Complex fc[100];
    double _Complex dc[100];
    long double _Complex lc[100];
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
  
#pragma omp parallel for firstprivate(fc,dc,lc)
  for (i = 0; i < ITER; i++) {
    if (creal(fc[i]) != i  ) printf("sub3 ng1 creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 2.0) printf("sub3 ng1 cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub3 ng1 creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 2.0) printf("sub3 ng1 cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub3 ng1 creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 2.0) printf("sub3 ng1 cimag(lc): %e\n", cimag(lc[i]));
    fc[i] = 1.0 + I * 1.0;
    dc[i] = 1.0 + I * 1.0;
    lc[i] = 1.0 + I * 1.0;
  }
  for (i = 0; i < ITER; i++) {
    if (creal(fc[i]) != i  ) printf("sub3 ng2 creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 2.0) printf("sub3 ng2 cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub3 ng2 creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 2.0) printf("sub3 ng2 cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub3 ng2 creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 2.0) printf("sub3 ng2 cimag(lc): %e\n", cimag(lc[i]));
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
  
#pragma omp parallel for lastprivate(fc,dc,lc)
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

void sub6() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  for (i = 0; i < ITER; i++) {
    fc[i] = 0.0 + I * 0.0;
    dc[i] = 0.0 + I * 0.0;
    lc[i] = 0.0 + I * 0.0;
  }
  
#pragma omp parallel for shared(fc,dc,lc)
  for (i = 0; i < ITER; i++) {
    fc[i] = i + I * 3.0;
    dc[i] = i + I * 3.0;
    lc[i] = i + I * 3.0;
  }
  for (i = 0; i < ITER; i++) {
    if (creal(fc[i]) != i  ) printf("sub6 ng creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 3.0) printf("sub6 ng cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub6 ng creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 3.0) printf("sub6 ng cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub6 ng creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 3.0) printf("sub6 ng cimag(lc): %e\n", cimag(lc[i]));
  }
}

void sub7() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  for (i = 0; i < ITER; i++) {
    fc[i] = 0.0 + I * 0.0;
    dc[i] = 0.0 + I * 0.0;
    lc[i] = 0.0 + I * 0.0;
  }
  
#pragma omp parallel for shared(fc,dc,lc)
  for (i = 0; i < ITER; i++) {
    fc[i] = i + I * 3.0;
    dc[i] = i + I * 3.0;
    lc[i] = i + I * 3.0;
  }
  for (i = 0; i < ITER; i++) {
    if (creal(fc[i]) != i  ) printf("sub7 ng creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 3.0) printf("sub7 ng cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub7 ng creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 3.0) printf("sub7 ng cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub7 ng creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 3.0) printf("sub7 ng cimag(lc): %e\n", cimag(lc[i]));
  }
}

void sub8() {
  int i;
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel for default(none)
  for (i = 0; i < ITER; i++) {
    float _Complex fc[ITER];
    double _Complex dc[ITER];
    long double _Complex lc[ITER];
    fc[i] = i + I * 2.0;
    dc[i] = i + I * 2.0;
    lc[i] = i + I * 2.0;
    if (creal(fc[i]) != i  ) printf("sub8 ng1 creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 2.0) printf("sub8 ng1 cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub8 ng1 creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 2.0) printf("sub8 ng1 cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub8 ng1 creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 2.0) printf("sub8 ng1 cimag(lc): %e\n", cimag(lc[i]));
  }
  if (creal(fc[9]) != 1.0) printf("sub8 ng2 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub8 ng2 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub8 ng2 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub8 ng2 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub8 ng2 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub8 ng2 cimag(lc): %e\n", cimag(lc[9]));
}

void sub9() {
  int i;
  static float _Complex fc[ITER];
  static double _Complex dc[ITER];
  static long double _Complex lc[ITER];
#pragma omp threadprivate(fc, dc, lc)
  for (i = 0; i < ITER; i++) {
    fc[i] = i + I * 2.0;
    dc[i] = i + I * 2.0;
    lc[i] = i + I * 2.0;
  }
  
#pragma omp parallel for copyin(fc, dc, lc)
  for (i = 0; i < ITER; i++) {
    if (creal(fc[i]) != i  ) printf("sub9 ng creal(fc): %e\n", creal(fc[i]));
    if (cimag(fc[i]) != 2.0) printf("sub9 ng cimag(fc): %e\n", cimag(fc[i]));
    if (creal(dc[i]) != i  ) printf("sub9 ng creal(dc): %e\n", creal(dc[i]));
    if (cimag(dc[i]) != 2.0) printf("sub9 ng cimag(dc): %e\n", cimag(dc[i]));
    if (creal(lc[i]) != i  ) printf("sub9 ng creal(lc): %e\n", creal(lc[i]));
    if (cimag(lc[i]) != 2.0) printf("sub9 ng cimag(lc): %e\n", cimag(lc[i]));
  }
}

int main() {
  sub1();
  sub2();
  sub3();
  sub4();
  sub6();
  sub7();
  sub8();
  sub9();
  printf("pass\n");
  return 0;
}
