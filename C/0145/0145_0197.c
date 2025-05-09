




#include <complex.h>
#include <stdio.h>

void sub2(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
#pragma omp parallel
  {
    
#pragma omp sections
    {
#pragma omp section
      {
	float _Complex fc[10];
	double _Complex dc[10];
	long double _Complex lc[10];
	fc[9] = 1.0 + I * 2.0;
	dc[9] = 1.0 + I * 2.0;
	lc[9] = 1.0 + I * 2.0;
	if (creal(fc[9]) != 1.0) printf("sub2 ng creal(fc): %e\n", creal(fc[9]));
	if (cimag(fc[9]) != 2.0) printf("sub2 ng cimag(fc): %e\n", cimag(fc[9]));
	if (creal(dc[9]) != 1.0) printf("sub2 ng creal(dc): %e\n", creal(dc[9]));
	if (cimag(dc[9]) != 2.0) printf("sub2 ng cimag(dc): %e\n", cimag(dc[9]));
	if (creal(lc[9]) != 1.0) printf("sub2 ng creal(lc): %e\n", creal(lc[9]));
	if (cimag(lc[9]) != 2.0) printf("sub2 ng cimag(lc): %e\n", cimag(lc[9]));
      }
#pragma omp section
      {
	float _Complex fc[10];
	double _Complex dc[10];
	long double _Complex lc[10];
	fc[9] = 1.0 + I * 2.0;
	dc[9] = 1.0 + I * 2.0;
	lc[9] = 1.0 + I * 2.0;
	if (creal(fc[9]) != 1.0) printf("sub2 ng creal(fc): %e\n", creal(fc[9]));
	if (cimag(fc[9]) != 2.0) printf("sub2 ng cimag(fc): %e\n", cimag(fc[9]));
	if (creal(dc[9]) != 1.0) printf("sub2 ng creal(dc): %e\n", creal(dc[9]));
	if (cimag(dc[9]) != 2.0) printf("sub2 ng cimag(dc): %e\n", cimag(dc[9]));
	if (creal(lc[9]) != 1.0) printf("sub2 ng creal(lc): %e\n", creal(lc[9]));
	if (cimag(lc[9]) != 2.0) printf("sub2 ng cimag(lc): %e\n", cimag(lc[9]));
      }
    }
  }
}

void sub3(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp sections firstprivate(fc,dc,lc)
    {
      {
	if (creal(fc[9]) != 1.0) printf("sub3 ng1 creal(fc): %e\n", creal(fc[9]));
	if (cimag(fc[9]) != 2.0) printf("sub3 ng1 cimag(fc): %e\n", cimag(fc[9]));
	if (creal(dc[9]) != 1.0) printf("sub3 ng1 creal(dc): %e\n", creal(dc[9]));
	if (cimag(dc[9]) != 2.0) printf("sub3 ng1 cimag(dc): %e\n", cimag(dc[9]));
	if (creal(lc[9]) != 1.0) printf("sub3 ng1 creal(lc): %e\n", creal(lc[9]));
	if (cimag(lc[9]) != 2.0) printf("sub3 ng1 cimag(lc): %e\n", cimag(lc[9]));
      }
#pragma omp section
      {
	if (creal(fc[9]) != 1.0) printf("sub3 ng1 creal(fc): %e\n", creal(fc[9]));
	if (cimag(fc[9]) != 2.0) printf("sub3 ng1 cimag(fc): %e\n", cimag(fc[9]));
	if (creal(dc[9]) != 1.0) printf("sub3 ng1 creal(dc): %e\n", creal(dc[9]));
	if (cimag(dc[9]) != 2.0) printf("sub3 ng1 cimag(dc): %e\n", cimag(dc[9]));
	if (creal(lc[9]) != 1.0) printf("sub3 ng1 creal(lc): %e\n", creal(lc[9]));
	if (cimag(lc[9]) != 2.0) printf("sub3 ng1 cimag(lc): %e\n", cimag(lc[9]));
      }
    }
  }
}

int main() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  sub2(fc, dc, lc);
  sub3(fc, dc, lc);
  printf("pass\n");
  return 0;
}
