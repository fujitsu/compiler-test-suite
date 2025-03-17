








#include <complex.h>
#include <stdio.h>

void sub1() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel sections private(fc,dc,lc)
  {
    {
      fc[9] = 3.0 + I * 4.0;
      dc[9] = 3.0 + I * 4.0;
      lc[9] = 3.0 + I * 4.0;
      if (creal(fc[9]) != 3.0) printf("sub1 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub1 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub1 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub1 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub1 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub1 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      fc[9] = 3.0 + I * 4.0;
      dc[9] = 3.0 + I * 4.0;
      lc[9] = 3.0 + I * 4.0;
      if (creal(fc[9]) != 3.0) printf("sub1 ng2 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 4.0) printf("sub1 ng2 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 3.0) printf("sub1 ng2 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 4.0) printf("sub1 ng2 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 3.0) printf("sub1 ng2 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 4.0) printf("sub1 ng2 cimag(lc): %e\n", cimag(lc[9]));
    }
  }
  if (creal(fc[9]) != 1.0) printf("sub1 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub1 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub1 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub1 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub1 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub1 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub2() {
  
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

void sub3() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
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
      fc[9] = 2.0 + I * 4.0;
      dc[9] = 2.0 + I * 4.0;
      lc[9] = 2.0 + I * 4.0;
    }
  }
  if (creal(fc[9]) != 1.0) printf("sub3 ng2 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub3 ng2 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 1.0) printf("sub3 ng2 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub3 ng2 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 1.0) printf("sub3 ng2 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub3 ng2 cimag(lc): %e\n", cimag(lc[9]));
}

void sub4() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
  fc[9] = 1.0 + I * 1.0;
  dc[9] = 1.0 + I * 1.0;
  lc[9] = 1.0 + I * 1.0;
  
#pragma omp parallel sections lastprivate(fc,dc,lc)
  {
#pragma omp section
    {
      fc[9] = 0.0 + I * 0.0;
      dc[9] = 0.0 + I * 0.0;
      lc[9] = 0.0 + I * 0.0;
      if (creal(fc[9]) != 0.0) printf("sub4 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 0.0) printf("sub4 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 0.0) printf("sub4 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 0.0) printf("sub4 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 0.0) printf("sub4 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 0.0) printf("sub4 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      fc[9] = 9.0 + I * 2.0;
      dc[9] = 9.0 + I * 2.0;
      lc[9] = 9.0 + I * 2.0;
      if (creal(fc[9]) != 9.0) printf("sub4 ng2 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub4 ng2 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 9.0) printf("sub4 ng2 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub4 ng2 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 9.0) printf("sub4 ng2 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub4 ng2 cimag(lc): %e\n", cimag(lc[9]));
    }
  }
  if (creal(fc[9]) != 9.0) printf("sub4 ng3 creal(fc): %e\n", creal(fc[9]));
  if (cimag(fc[9]) != 2.0) printf("sub4 ng3 cimag(fc): %e\n", cimag(fc[9]));
  if (creal(dc[9]) != 9.0) printf("sub4 ng3 creal(dc): %e\n", creal(dc[9]));
  if (cimag(dc[9]) != 2.0) printf("sub4 ng3 cimag(dc): %e\n", cimag(dc[9]));
  if (creal(lc[9]) != 9.0) printf("sub4 ng3 creal(lc): %e\n", creal(lc[9]));
  if (cimag(lc[9]) != 2.0) printf("sub4 ng3 cimag(lc): %e\n", cimag(lc[9]));
}

void sub6() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
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

void sub7() {
  float _Complex fc[10];
  double _Complex dc[10];
  long double _Complex lc[10];
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

void sub8() {
  
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

void sub9() {
  static float _Complex fc[10];
  static double _Complex dc[10];
  static long double _Complex lc[10];
#pragma omp threadprivate(fc, dc, lc)
  fc[9] = 1.0 + I * 2.0;
  dc[9] = 1.0 + I * 2.0;
  lc[9] = 1.0 + I * 2.0;
  
#pragma omp parallel sections copyin(fc, dc, lc)
  {
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng1 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng1 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng1 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng1 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng1 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng1 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng2 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng2 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng2 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng2 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng2 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng2 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng3 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng3 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng3 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng3 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng3 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng3 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng4 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng4 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng4 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng4 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng4 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng4 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng5 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng5 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng5 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng5 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng5 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng5 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng6 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng6 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng6 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng6 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng6 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng6 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng7 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng7 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng7 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng7 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng7 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng7 cimag(lc): %e\n", cimag(lc[9]));
    }
#pragma omp section
    {
      if (creal(fc[9]) != 1.0) printf("sub9 ng8 creal(fc): %e\n", creal(fc[9]));
      if (cimag(fc[9]) != 2.0) printf("sub9 ng8 cimag(fc): %e\n", cimag(fc[9]));
      if (creal(dc[9]) != 1.0) printf("sub9 ng8 creal(dc): %e\n", creal(dc[9]));
      if (cimag(dc[9]) != 2.0) printf("sub9 ng8 cimag(dc): %e\n", cimag(dc[9]));
      if (creal(lc[9]) != 1.0) printf("sub9 ng8 creal(lc): %e\n", creal(lc[9]));
      if (cimag(lc[9]) != 2.0) printf("sub9 ng8 cimag(lc): %e\n", cimag(lc[9]));
    }
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
