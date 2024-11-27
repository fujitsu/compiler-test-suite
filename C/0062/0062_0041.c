#include <stdio.h>

#define N 10

double a1[N];
double a2[N];
double a3[N];
double a4[N];
double b1[N];
double b2[N];
double b3[N];
double b4[N];

static void foo(int n, int l) {
  int i,k;

  k = l;
  for (i=0; i<n; ++i) {
    if (k == 1) {
      a1[i] = b1[i];
    }
    if (k == 2) {
      a2[i] = b2[i];
    }
    if (k == 3) {
      a3[i] = b3[i];
    }
    if (k == 4) {
      a4[i] = b4[i];
    }
  }
  return;
}

#define ANS  (double)20.0
#define ANS2  (double)0.0

int main(void) {
  int i;
  double s1,s2,s3,s4;
  
#pragma clang loop unroll(disable)
  for (i=0; i<N; ++i) {
    a1[i] = 0.0;
    a2[i] = 0.0;
    a3[i] = 0.0;
    a4[i] = 0.0;
    b1[i] = 1.0;
    b2[i] = 2.0;
    b3[i] = 3.0;
    b4[i] = 4.0;
  }

  foo(N,2);

  s1 = 0.0; 
  s2 = 0.0; 
  s3 = 0.0; 
  s4 = 0.0; 
#pragma clang loop unroll(disable)
  for (i=0; i<N; ++i) {
    s1 += a1[i];
    s2 += a2[i];
    s3 += a3[i];
    s4 += a4[i];
  }

  if (s1 != ANS2) {
    printf("ng:s1 %lf != %lf\n", s1, ANS2);
  } else if (s2 != ANS) {
    printf("ng:s2 %lf != %lf\n", s2, ANS);
  } else if (s3 != ANS2) {
    printf("ng:s3 %lf != %lf\n", s3, ANS2);
  } else if (s4 != ANS2) {
    printf("ng:s4 %lf != %lf\n", s4, ANS2);
  } else {
    printf("ok\n");
  }

  return 0;
}
