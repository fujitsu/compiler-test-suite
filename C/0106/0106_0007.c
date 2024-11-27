#include <stdio.h>
#define N 100

void sub1(double *a, double *b, double *c, double *d, int n) {
  int i;
#pragma clang fp_contract(fast)
  for(i=0; i<n; i++) {
    a[i] = b[i] * c[i] + d[i];
  }
}

void sub2(double *a, double *b, double *c, double *d, int n) {
  int i;
#pragma clang fp_contract(off)
  for(i=0; i<n; i++) {
    a[i] = b[i] * c[i] + d[i];
  }
}

void sub3(double *a, double *b, double *c, double *d, int n) {
  int i;
#pragma clang fp_contract(fast)
  for(i=0; i<n; i++) {
    a[i] = b[i] * c[i] + d[i];
  }
}

void sub4(double *a, double *b, double *c, double *d, int n) {
  int i;
#pragma clang fp_contract(off)
  for(i=0; i<n; i++) {
    a[i] = b[i] * c[i] + d[i];
  }
}

int main() {
  double a[N],b[N],c[N],d[N];
  int i;

  for(i=0; i<N; i++) {
    a[i] = 0.;
    b[i] = 1.;
    c[i] = 2.;
    d[i] = 3.;
  }

  sub1(a,b,c,d,N);
  sub2(a,b,c,d,N);
  sub3(a,b,c,d,N);
  sub4(a,b,c,d,N);

  for(i=0; i<N; i++) {
    if (a[i] != 5.) {
      printf("ng\n");
    }
  }
  printf("ok\n");

  return 0;
}
