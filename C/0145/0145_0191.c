






#include <complex.h>
#include <stdio.h>

void sub1(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
#pragma omp parallel private(fc,dc,lc)
  {
    fc = 1.0 + I * 2.0;
    dc = 1.0 + I * 2.0;
    lc = 1.0 + I * 2.0;
#pragma omp parallel
    {
      
#pragma omp single private(fc,dc,lc)
      {
	fc = 2.0 + I * 3.0;
	dc = 2.0 + I * 3.0;
	lc = 2.0 + I * 3.0;
	if (creal(fc) != 2.0) printf("sub1 ng1 creal(fc): %e\n", creal(fc));
	if (cimag(fc) != 3.0) printf("sub1 ng1 cimag(fc): %e\n", cimag(fc));
	if (creal(dc) != 2.0) printf("sub1 ng1 creal(dc): %e\n", creal(dc));
	if (cimag(dc) != 3.0) printf("sub1 ng1 cimag(dc): %e\n", cimag(dc));
	if (creal(lc) != 2.0) printf("sub1 ng1 creal(lc): %e\n", creal(lc));
	if (cimag(lc) != 3.0) printf("sub1 ng1 cimag(lc): %e\n", cimag(lc));
      }
      if (creal(fc) != 1.0) printf("sub1 ng2 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 2.0) printf("sub1 ng2 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 1.0) printf("sub1 ng2 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 2.0) printf("sub1 ng2 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 1.0) printf("sub1 ng2 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 2.0) printf("sub1 ng2 cimag(lc): %e\n", cimag(lc));
    }
  }
}

void sub2(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
#pragma omp parallel private(fc,dc,lc)
  {
    fc = 1.0 + I * 2.0;
    dc = 1.0 + I * 2.0;
    lc = 1.0 + I * 2.0;
#pragma omp parallel
    {
      
#pragma omp single
      {
	float _Complex fc;
	double _Complex dc;
	long double _Complex lc;
	fc = 2.0 + I * 3.0;
	dc = 2.0 + I * 3.0;
	lc = 2.0 + I * 3.0;
	if (creal(fc) != 2.0) printf("sub2 ng1 creal(fc): %e\n", creal(fc));
	if (cimag(fc) != 3.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc));
	if (creal(dc) != 2.0) printf("sub2 ng1 creal(dc): %e\n", creal(dc));
	if (cimag(dc) != 3.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc));
	if (creal(lc) != 2.0) printf("sub2 ng1 creal(lc): %e\n", creal(lc));
	if (cimag(lc) != 3.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc));
      }
      if (creal(fc) != 1.0) printf("sub2 ng2 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 2.0) printf("sub2 ng2 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 1.0) printf("sub2 ng2 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 2.0) printf("sub2 ng2 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 1.0) printf("sub2 ng2 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 2.0) printf("sub2 ng2 cimag(lc): %e\n", cimag(lc));
    }
  }
}

void sub3(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
#pragma omp parallel private(fc,dc,lc)
  {
    fc = 1.0 + I * 2.0;
    dc = 1.0 + I * 2.0;
    lc = 1.0 + I * 2.0;
#pragma omp parallel
    {
      
#pragma omp single firstprivate(fc,dc,lc)
      {
	if (creal(fc) != 1.0) printf("sub3 ng creal(fc): %e\n", creal(fc));
	if (cimag(fc) != 2.0) printf("sub3 ng cimag(fc): %e\n", cimag(fc));
	if (creal(dc) != 1.0) printf("sub3 ng creal(dc): %e\n", creal(dc));
	if (cimag(dc) != 2.0) printf("sub3 ng cimag(dc): %e\n", cimag(dc));
	if (creal(lc) != 1.0) printf("sub3 ng creal(lc): %e\n", creal(lc));
	if (cimag(lc) != 2.0) printf("sub3 ng cimag(lc): %e\n", cimag(lc));
      }
    }
  }
}

void sub4(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
#pragma omp parallel private(fc,dc,lc)
  {
#pragma omp parallel private(fc,dc,lc)
    {
      fc = 1.0 + I * 2.0;
      dc = 1.0 + I * 2.0;
      lc = 1.0 + I * 2.0;
      if (creal(fc) != 1.0) printf("sub4 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 2.0) printf("sub4 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 1.0) printf("sub4 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 2.0) printf("sub4 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 1.0) printf("sub4 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 2.0) printf("sub4 ng1 cimag(lc): %e\n", cimag(lc));
      
#pragma omp single copyprivate(fc,dc,lc)
      {
	fc = 2.0 + I * 3.0;
	dc = 2.0 + I * 3.0;
	lc = 2.0 + I * 3.0;
      }
      if (creal(fc) != 2.0) printf("sub4 ng2 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 3.0) printf("sub4 ng2 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 2.0) printf("sub4 ng2 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 3.0) printf("sub4 ng2 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 2.0) printf("sub4 ng2 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 3.0) printf("sub4 ng2 cimag(lc): %e\n", cimag(lc));
    }
  }
}

int main() {
  float _Complex fc;
  double _Complex dc;
  long double _Complex lc;
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
  sub1(fc, dc, lc);
  sub2(fc, dc, lc);
  sub3(fc, dc, lc);
  sub4(fc, dc, lc);
  printf("pass\n");
  return 0;
}
