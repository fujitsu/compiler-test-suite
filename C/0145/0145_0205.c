






#include <complex.h>
#include <stdio.h>

void sub1(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task shared(fc,dc,lc)
    {
#pragma omp critical
      {
	fc = 3.0 + I * 4.0;
	dc = 3.0 + I * 4.0;
	lc = 3.0 + I * 4.0;
      }
      if (creal(fc) != 3.0) printf("sub1 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 4.0) printf("sub1 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 3.0) printf("sub1 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 4.0) printf("sub1 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 3.0) printf("sub1 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 4.0) printf("sub1 ng1 cimag(lc): %e\n", cimag(lc));
    }
#pragma omp taskwait
    if (creal(fc) != 3.0) printf("sub1 ng2 creal(fc): %e\n", creal(fc));
    if (cimag(fc) != 4.0) printf("sub1 ng2 cimag(fc): %e\n", cimag(fc));
    if (creal(dc) != 3.0) printf("sub1 ng2 creal(dc): %e\n", creal(dc));
    if (cimag(dc) != 4.0) printf("sub1 ng2 cimag(dc): %e\n", cimag(dc));
    if (creal(lc) != 3.0) printf("sub1 ng2 creal(lc): %e\n", creal(lc));
    if (cimag(lc) != 4.0) printf("sub1 ng2 cimag(lc): %e\n", cimag(lc));
  }
  if (creal(fc) != 3.0) printf("sub1 ng3 creal(fc): %e\n", creal(fc));
  if (cimag(fc) != 4.0) printf("sub1 ng3 cimag(fc): %e\n", cimag(fc));
  if (creal(dc) != 3.0) printf("sub1 ng3 creal(dc): %e\n", creal(dc));
  if (cimag(dc) != 4.0) printf("sub1 ng3 cimag(dc): %e\n", cimag(dc));
  if (creal(lc) != 3.0) printf("sub1 ng3 creal(lc): %e\n", creal(lc));
  if (cimag(lc) != 4.0) printf("sub1 ng3 cimag(lc): %e\n", cimag(lc));
}

void sub2(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
#pragma omp parallel shared(fc,dc,lc)
  {
    
#pragma omp task
    {
#pragma omp critical
      {
	fc = 3.0 + I * 4.0;
	dc = 3.0 + I * 4.0;
	lc = 3.0 + I * 4.0;
      }
      if (creal(fc) != 3.0) printf("sub2 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 4.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 3.0) printf("sub2 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 4.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 3.0) printf("sub2 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 4.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc));
    }
#pragma omp taskwait
    if (creal(fc) != 3.0) printf("sub2 ng2 creal(fc): %e\n", creal(fc));
    if (cimag(fc) != 4.0) printf("sub2 ng2 cimag(fc): %e\n", cimag(fc));
    if (creal(dc) != 3.0) printf("sub2 ng2 creal(dc): %e\n", creal(dc));
    if (cimag(dc) != 4.0) printf("sub2 ng2 cimag(dc): %e\n", cimag(dc));
    if (creal(lc) != 3.0) printf("sub2 ng2 creal(lc): %e\n", creal(lc));
    if (cimag(lc) != 4.0) printf("sub2 ng2 cimag(lc): %e\n", cimag(lc));
  }
  if (creal(fc) != 3.0) printf("sub2 ng3 creal(fc): %e\n", creal(fc));
  if (cimag(fc) != 4.0) printf("sub2 ng3 cimag(fc): %e\n", cimag(fc));
  if (creal(dc) != 3.0) printf("sub2 ng3 creal(dc): %e\n", creal(dc));
  if (cimag(dc) != 4.0) printf("sub2 ng3 cimag(dc): %e\n", cimag(dc));
  if (creal(lc) != 3.0) printf("sub2 ng3 creal(lc): %e\n", creal(lc));
  if (cimag(lc) != 4.0) printf("sub2 ng3 cimag(lc): %e\n", cimag(lc));
}

void sub3(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task private(fc,dc,lc)
    {
      fc = 3.0 + I * 4.0;
      dc = 3.0 + I * 4.0;
      lc = 3.0 + I * 4.0;
      if (creal(fc) != 3.0) printf("sub3 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 4.0) printf("sub3 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 3.0) printf("sub3 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 4.0) printf("sub3 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 3.0) printf("sub3 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 4.0) printf("sub3 ng1 cimag(lc): %e\n", cimag(lc));
    }
#pragma omp taskwait
    if (creal(fc) != 1.0) printf("sub3 ng2 creal(fc): %e\n", creal(fc));
    if (cimag(fc) != 2.0) printf("sub3 ng2 cimag(fc): %e\n", cimag(fc));
    if (creal(dc) != 1.0) printf("sub3 ng2 creal(dc): %e\n", creal(dc));
    if (cimag(dc) != 2.0) printf("sub3 ng2 cimag(dc): %e\n", cimag(dc));
    if (creal(lc) != 1.0) printf("sub3 ng2 creal(lc): %e\n", creal(lc));
    if (cimag(lc) != 2.0) printf("sub3 ng2 cimag(lc): %e\n", cimag(lc));
  }
  if (creal(fc) != 1.0) printf("sub3 ng3 creal(fc): %e\n", creal(fc));
  if (cimag(fc) != 2.0) printf("sub3 ng3 cimag(fc): %e\n", cimag(fc));
  if (creal(dc) != 1.0) printf("sub3 ng3 creal(dc): %e\n", creal(dc));
  if (cimag(dc) != 2.0) printf("sub3 ng3 cimag(dc): %e\n", cimag(dc));
  if (creal(lc) != 1.0) printf("sub3 ng3 creal(lc): %e\n", creal(lc));
  if (cimag(lc) != 2.0) printf("sub3 ng3 cimag(lc): %e\n", cimag(lc));
}

void sub4(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task
    {
      float _Complex fc;
      double _Complex dc;
      long double _Complex lc;
      fc = 3.0 + I * 4.0;
      dc = 3.0 + I * 4.0;
      lc = 3.0 + I * 4.0;
      if (creal(fc) != 3.0) printf("sub4 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 4.0) printf("sub4 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 3.0) printf("sub4 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 4.0) printf("sub4 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 3.0) printf("sub4 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 4.0) printf("sub4 ng1 cimag(lc): %e\n", cimag(lc));
    }
#pragma omp taskwait
    if (creal(fc) != 1.0) printf("sub4 ng2 creal(fc): %e\n", creal(fc));
    if (cimag(fc) != 2.0) printf("sub4 ng2 cimag(fc): %e\n", cimag(fc));
    if (creal(dc) != 1.0) printf("sub4 ng2 creal(dc): %e\n", creal(dc));
    if (cimag(dc) != 2.0) printf("sub4 ng2 cimag(dc): %e\n", cimag(dc));
    if (creal(lc) != 1.0) printf("sub4 ng2 creal(lc): %e\n", creal(lc));
    if (cimag(lc) != 2.0) printf("sub4 ng2 cimag(lc): %e\n", cimag(lc));
  }
  if (creal(fc) != 1.0) printf("sub4 ng3 creal(fc): %e\n", creal(fc));
  if (cimag(fc) != 2.0) printf("sub4 ng3 cimag(fc): %e\n", cimag(fc));
  if (creal(dc) != 1.0) printf("sub4 ng3 creal(dc): %e\n", creal(dc));
  if (cimag(dc) != 2.0) printf("sub4 ng3 cimag(dc): %e\n", cimag(dc));
  if (creal(lc) != 1.0) printf("sub4 ng3 creal(lc): %e\n", creal(lc));
  if (cimag(lc) != 2.0) printf("sub4 ng3 cimag(lc): %e\n", cimag(lc));
}

void sub5(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task firstprivate(fc,dc,lc)
    {
      if (creal(fc) != 1.0) printf("sub5 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 2.0) printf("sub5 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 1.0) printf("sub5 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 2.0) printf("sub5 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 1.0) printf("sub5 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 2.0) printf("sub5 ng1 cimag(lc): %e\n", cimag(lc));
      fc = 3.0 + I * 4.0;
      dc = 3.0 + I * 4.0;
      lc = 3.0 + I * 4.0;
    }
#pragma omp taskwait
    if (creal(fc) != 1.0) printf("sub5 ng2 creal(fc): %e\n", creal(fc));
    if (cimag(fc) != 2.0) printf("sub5 ng2 cimag(fc): %e\n", cimag(fc));
    if (creal(dc) != 1.0) printf("sub5 ng2 creal(dc): %e\n", creal(dc));
    if (cimag(dc) != 2.0) printf("sub5 ng2 cimag(dc): %e\n", cimag(dc));
    if (creal(lc) != 1.0) printf("sub5 ng2 creal(lc): %e\n", creal(lc));
    if (cimag(lc) != 2.0) printf("sub5 ng2 cimag(lc): %e\n", cimag(lc));
  }
  if (creal(fc) != 1.0) printf("sub5 ng3 creal(fc): %e\n", creal(fc));
  if (cimag(fc) != 2.0) printf("sub5 ng3 cimag(fc): %e\n", cimag(fc));
  if (creal(dc) != 1.0) printf("sub5 ng3 creal(dc): %e\n", creal(dc));
  if (cimag(dc) != 2.0) printf("sub5 ng3 cimag(dc): %e\n", cimag(dc));
  if (creal(lc) != 1.0) printf("sub5 ng3 creal(lc): %e\n", creal(lc));
  if (cimag(lc) != 2.0) printf("sub5 ng3 cimag(lc): %e\n", cimag(lc));
}

void sub6(float _Complex fc,
	  double _Complex dc,
	  long double _Complex lc) {
  fc = 1.0 + I * 2.0;
  dc = 1.0 + I * 2.0;
  lc = 1.0 + I * 2.0;
#pragma omp parallel private(fc,dc,lc)
  {
    fc = 3.0 + I * 4.0;
    dc = 3.0 + I * 4.0;
    lc = 3.0 + I * 4.0;

    
#pragma omp task firstprivate(fc,dc,lc)
    {
      if (creal(fc) != 3.0) printf("sub6 ng1 creal(fc): %e\n", creal(fc));
      if (cimag(fc) != 4.0) printf("sub6 ng1 cimag(fc): %e\n", cimag(fc));
      if (creal(dc) != 3.0) printf("sub6 ng1 creal(dc): %e\n", creal(dc));
      if (cimag(dc) != 4.0) printf("sub6 ng1 cimag(dc): %e\n", cimag(dc));
      if (creal(lc) != 3.0) printf("sub6 ng1 creal(lc): %e\n", creal(lc));
      if (cimag(lc) != 4.0) printf("sub6 ng1 cimag(lc): %e\n", cimag(lc));
      fc = 5.0 + I * 6.0;
      dc = 5.0 + I * 6.0;
      lc = 5.0 + I * 6.0;
    }
#pragma omp taskwait
    if (creal(fc) != 3.0) printf("sub6 ng2 creal(fc): %e\n", creal(fc));
    if (cimag(fc) != 4.0) printf("sub6 ng2 cimag(fc): %e\n", cimag(fc));
    if (creal(dc) != 3.0) printf("sub6 ng2 creal(dc): %e\n", creal(dc));
    if (cimag(dc) != 4.0) printf("sub6 ng2 cimag(dc): %e\n", cimag(dc));
    if (creal(lc) != 3.0) printf("sub6 ng2 creal(lc): %e\n", creal(lc));
    if (cimag(lc) != 4.0) printf("sub6 ng2 cimag(lc): %e\n", cimag(lc));
  }
  if (creal(fc) != 1.0) printf("sub6 ng3 creal(fc): %e\n", creal(fc));
  if (cimag(fc) != 2.0) printf("sub6 ng3 cimag(fc): %e\n", cimag(fc));
  if (creal(dc) != 1.0) printf("sub6 ng3 creal(dc): %e\n", creal(dc));
  if (cimag(dc) != 2.0) printf("sub6 ng3 cimag(dc): %e\n", cimag(dc));
  if (creal(lc) != 1.0) printf("sub6 ng3 creal(lc): %e\n", creal(lc));
  if (cimag(lc) != 2.0) printf("sub6 ng3 cimag(lc): %e\n", cimag(lc));
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
  sub5(fc, dc, lc);
  sub6(fc, dc, lc);
  printf("pass\n");
  return 0;
}
