




#include <complex.h>
#include <stdio.h>
#define ITER 100

void sub2(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  int i;
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

void sub3(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  int i;
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

int main() {
  float _Complex fc[ITER];
  double _Complex dc[ITER];
  long double _Complex lc[ITER];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  sub2(fc, dc, lc);
  sub3(fc, dc, lc);
  printf("pass\n");
  return 0;
}
