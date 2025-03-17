








#include <complex.h>
#include <stdio.h>
#define ITER 100

void sub2(float _Complex fc[ITER],
	  double _Complex dc[ITER],
	  long double _Complex lc[ITER]) {
  int i;
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

void sub3(float _Complex fc[ITER],
	  double _Complex dc[ITER],
	  long double _Complex lc[ITER]) {
  int i;
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


void sub6(float _Complex fc[ITER],
	  double _Complex dc[ITER],
	  long double _Complex lc[ITER]) {
  int i;
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

void sub7(float _Complex fc[ITER],
	  double _Complex dc[ITER],
	  long double _Complex lc[ITER]) {
  int i;
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

void sub8(float _Complex fc[ITER],
	  double _Complex dc[ITER],
	  long double _Complex lc[ITER]) {
  int i;
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


int main() {
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  sub2(fc, dc, lc);
  sub3(fc, dc, lc);
  sub6(fc, dc, lc);
  sub7(fc, dc, lc);
  sub8(fc, dc, lc);
  printf("pass\n");
  return 0;
}
