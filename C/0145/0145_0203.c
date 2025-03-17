








#include <complex.h>
#include <stdio.h>

void sub2(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  
#pragma omp parallel sections
  {
#pragma omp section
    {
      float _Complex fc[10];
      double _Complex dc[10];
      long double _Complex lc[10];
      fc[9] = 1.0 + I * 2.0;
      dc[9] = 1.0 + I * 2.0;
      lc[9] = 1.0 + I * 2.0;
      if (creal(fc[9]) != 1.0) printf("sub2 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub2 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub2 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      float _Complex fc[10];
      double _Complex dc[10];
      long double _Complex lc[10];
      fc[9] = 1.0 + I * 2.0;
      dc[9] = 1.0 + I * 2.0;
      lc[9] = 1.0 + I * 2.0;
      if (creal(fc[9]) != 1.0) printf("sub2 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub2 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub2 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub2 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub2 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub2 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
  }
}

void sub3(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel sections firstprivate(fc,dc,lc)
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
  if (creal(fc[9]) != 1.0) printf("sub3 ng2 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub3 ng2 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub3 ng2 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub3 ng2 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub3 ng2 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub3 ng2 cimag(lc): %e\n", cimag(lc[9]));
}

void sub6(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel sections shared(fc,dc,lc)
  {
#pragma omp section
    {
      fc[9] = 2.0 + I * 3.0;
      dc[9] = 2.0 + I * 3.0;
      lc[9] = 2.0 + I * 3.0;
    }
  }
  if (creal(fc[9]) != 2.0) printf("sub6 ng creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 3.0) printf("sub6 ng cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 2.0) printf("sub6 ng creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 3.0) printf("sub6 ng cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 2.0) printf("sub6 ng creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 3.0) printf("sub6 ng cimag(lc): %e\n", cimag(lc[9]));
}

void sub7(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel sections
  {
#pragma omp section
    {
      fc[9] = 2.0 + I * 3.0;
      dc[9] = 2.0 + I * 3.0;
      lc[9] = 2.0 + I * 3.0;
    }
  }
  if (creal(fc[9]) != 2.0) printf("sub7 ng creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 3.0) printf("sub7 ng cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 2.0) printf("sub7 ng creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 3.0) printf("sub7 ng cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 2.0) printf("sub7 ng creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 3.0) printf("sub7 ng cimag(lc): %e\n", cimag(lc[9]));
}

void sub8(float _Complex fc[],
	  double _Complex dc[],
	  long double _Complex lc[]) {
  
#pragma omp parallel sections default(none)
  {
#pragma omp section
    {
      float _Complex fc[10];
      double _Complex dc[10];
      long double _Complex lc[10];
      fc[9] = 1.0 + I * 2.0;
      dc[9] = 1.0 + I * 2.0;
      lc[9] = 1.0 + I * 2.0;
      if (creal(fc[9]) != 1.0) printf("sub8 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub8 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub8 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub8 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub8 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub8 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      float _Complex fc[10];
      double _Complex dc[10];
      long double _Complex lc[10];
      fc[9] = 1.0 + I * 2.0;
      dc[9] = 1.0 + I * 2.0;
      lc[9] = 1.0 + I * 2.0;
      if (creal(fc[9]) != 1.0) printf("sub8 ng2 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub8 ng2 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub8 ng2 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub8 ng2 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub8 ng2 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub8 ng2 cimag(lc): %e\n", cimag(lc[9]));
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
  sub6(fc, dc, lc);
  sub7(fc, dc, lc);
  sub8(fc, dc, lc);
  printf("pass\n");
  return 0;
}
