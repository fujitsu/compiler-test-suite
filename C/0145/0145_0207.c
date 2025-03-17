






#include <complex.h>
#include <stdio.h>

void sub1() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task shared(fc,dc,lc)
    {
#pragma omp critical
      {
	fc[9] = 3.0 + I * 4.0;
	dc[9] = 3.0 + I * 4.0;
	lc[9] = 3.0 + I * 4.0;
      }
      if (creal(fc[9]) != 3.0) printf("sub1 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub1 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub1 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub1 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub1 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub1 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp taskwait
    if (creal(fc[9]) != 3.0) printf("sub1 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 4.0) printf("sub1 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 3.0) printf("sub1 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 4.0) printf("sub1 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 3.0) printf("sub1 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 4.0) printf("sub1 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
  if (creal(fc[9]) != 3.0) printf("sub1 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 4.0) printf("sub1 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 3.0) printf("sub1 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 4.0) printf("sub1 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 3.0) printf("sub1 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 4.0) printf("sub1 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub2() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel shared(fc,dc,lc)
  {
    
#pragma omp task
    {
#pragma omp critical
      {
	fc[9] = 3.0 + I * 4.0;
	dc[9] = 3.0 + I * 4.0;
	lc[9] = 3.0 + I * 4.0;
      }
      if (creal(fc[9]) != 3.0) printf("sub2 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub2 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub2 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp taskwait
    if (creal(fc[9]) != 3.0) printf("sub2 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 4.0) printf("sub2 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 3.0) printf("sub2 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 4.0) printf("sub2 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 3.0) printf("sub2 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 4.0) printf("sub2 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
  if (creal(fc[9]) != 3.0) printf("sub2 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 4.0) printf("sub2 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 3.0) printf("sub2 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 4.0) printf("sub2 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 3.0) printf("sub2 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 4.0) printf("sub2 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub3() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task private(fc,dc,lc)
    {
      fc[9] = 3.0 + I * 4.0;
      dc[9] = 3.0 + I * 4.0;
      lc[9] = 3.0 + I * 4.0;
      if (creal(fc[9]) != 3.0) printf("sub3 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub3 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub3 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub3 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub3 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub3 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp taskwait
    if (creal(fc[9]) != 1.0) printf("sub3 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub3 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub3 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub3 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub3 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub3 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
  if (creal(fc[9]) != 1.0) printf("sub3 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub3 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub3 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub3 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub3 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub3 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub4() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task
    {
      float _Complex fc[10];
      double _Complex dc[10];
      long double _Complex lc[10];
      fc[9] = 3.0 + I * 4.0;
      dc[9] = 3.0 + I * 4.0;
      lc[9] = 3.0 + I * 4.0;
      if (creal(fc[9]) != 3.0) printf("sub4 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub4 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub4 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub4 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub4 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub4 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp taskwait
    if (creal(fc[9]) != 1.0) printf("sub4 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub4 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub4 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub4 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub4 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub4 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
  if (creal(fc[9]) != 1.0) printf("sub4 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub4 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub4 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub4 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub4 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub4 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub5() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel
  {
    
#pragma omp task firstprivate(fc,dc,lc)
    {
      if (creal(fc[9]) != 1.0) printf("sub5 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub5 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub5 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub5 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub5 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub5 ng1 cimag(lc): %e\n", cimag(lc[9]));
      fc[9] = 3.0 + I * 4.0;
      dc[9] = 3.0 + I * 4.0;
      lc[9] = 3.0 + I * 4.0;
    }
#pragma omp taskwait
    if (creal(fc[9]) != 1.0) printf("sub5 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 2.0) printf("sub5 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 1.0) printf("sub5 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 2.0) printf("sub5 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 1.0) printf("sub5 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 2.0) printf("sub5 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
  if (creal(fc[9]) != 1.0) printf("sub5 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub5 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub5 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub5 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub5 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub5 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub6() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
#pragma omp parallel private(fc,dc,lc)
  {
    fc[9] = 3.0 + I * 4.0;
    dc[9] = 3.0 + I * 4.0;
    lc[9] = 3.0 + I * 4.0;

    
#pragma omp task firstprivate(fc,dc,lc)
    {
      if (creal(fc[9]) != 3.0) printf("sub6 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub6 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub6 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub6 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub6 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub6 ng1 cimag(lc): %e\n", cimag(lc[9]));
      fc[9] = 5.0 + I * 6.0;
      dc[9] = 5.0 + I * 6.0;
      lc[9] = 5.0 + I * 6.0;
    }
#pragma omp taskwait
    if (creal(fc[9]) != 3.0) printf("sub6 ng2 creal(fc): %e\n", creal(fc[9]));
    if (cimag(fc[9]) != 4.0) printf("sub6 ng2 cimag(fc): %e\n", cimag(fc[9]));
    if (creal(dc[9]) != 3.0) printf("sub6 ng2 creal(dc): %e\n", creal(dc[9]));
    if (cimag(dc[9]) != 4.0) printf("sub6 ng2 cimag(dc): %e\n", cimag(dc[9]));
    if (creal(lc[9]) != 3.0) printf("sub6 ng2 creal(lc): %e\n", creal(lc[9]));
    if (cimag(lc[9]) != 4.0) printf("sub6 ng2 cimag(lc): %e\n", cimag(lc[9]));
  }
  if (creal(fc[9]) != 1.0) printf("sub6 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub6 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub6 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub6 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub6 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub6 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

int main() {
  sub1();
  sub2();
  sub3();
  sub4();
  sub5();
  sub6();
  printf("pass\n");
  return 0;
}
