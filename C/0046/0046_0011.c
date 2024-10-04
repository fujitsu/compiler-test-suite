
#include <stdio.h>

void pragma_unroll0_r8(double a[], double b[], int n)
{
  int i;
#pragma clang loop unroll(disable)
  for (i=0; i<n; ++i) {
    a[i] = a[i] + b[i];
  }
}

void pragma_unroll1_r8(double a[], double b[], int n)
{
  int i;
#pragma clang loop unroll_count(1)
  for (i=0; i<n; ++i) {
    a[i] = a[i] + b[i];
  }
}

void pragma_unroll2_r8(double a[], double b[], int n)
{
  int i;
#pragma clang loop unroll_count(2)
  for (i=0; i<n; ++i) {
    a[i] = a[i] + b[i];
  }
}

void pragma_unroll10_r8(double a[], double b[], int n)
{
  int i;
#pragma clang loop unroll_count(10)
  for (i=0; i<n; ++i) {
    a[i] = a[i] + b[i];
  }
}

#define initarray(a, n, value) \
  { \
    int i; \
    for (i=0; i<(n); ++i) { \
      (a)[i] = (value); \
    } \
  }

#define sum(a, n, r) \
  { \
    int i; \
    r = 0; \
    for (i=0; i<n; ++i) { \
      r = r + a[i]; \
    } \
  }

int main(void)
{
  const int n=100;
  double a[100],b[100];
  double r1,r2,r3,r4;

  initarray(a,n,3.0);
  initarray(b,n,4.0);
  pragma_unroll0_r8(a,b,n);
  sum(a,n,r1);

  initarray(a,n,3.0);
  initarray(b,n,4.0);
  pragma_unroll1_r8(a,b,n);
  sum(a,n,r2);

  initarray(a,n,3.0);
  initarray(b,n,4.0);
  pragma_unroll2_r8(a,b,n);
  sum(a,n,r3);

  initarray(a,n,3.0);
  initarray(b,n,4.0);
  pragma_unroll10_r8(a,b,n);
  sum(a,n,r4);

  if ((r1 == r2) && (r2 == r3) && (r3 == r4)) {
    (void)printf("ok\n");
  } else {
    (void)printf("ng : %lf, %lf, %lf, %lf\n",r1,r2,r3,r4);
  }
  return 0;
}
