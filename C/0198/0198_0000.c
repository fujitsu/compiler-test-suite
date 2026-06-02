#include <stdio.h>
#define nn 10

static void foo1(double *a, double *b, int n) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = b[i];
  }
}

static void foo2(double *a, double *b, int n) {
  int i;
  for (i = 0; i < n; i++) {
    a[i] = b[i];
  }
}

static void foo3(double *a, double *b, int n) {
  int i;
  for (i = 0; i < n; i++) {
    a[i] = b[i];
  }
}

static void foo4(double *a, double *b, int n) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < n; i++) {
    a[i] = b[i];
  }
}

static void foo5(double *a, double *b, int n) {
  int i;
  for (i = 0; i < n; i++) {
    a[i] = b[i];
  }
}

static void foo6(double *a, double *b, int n) {
  int i;
#pragma clang loop unroll(disable)
  for (i = 0; i < n; i++) {
    a[i] = b[i];
  }
}

int main() {
  double a[nn],b[nn];
  double result;
  int i;

  for (i = 0; i < nn; i++) {
    a[i] = 0;
    b[i] = 1;
  }

  foo1(a,b,nn);
  foo2(a,b,nn);
  foo3(a,b,nn);
  foo4(a,b,nn);
  foo5(a,b,nn);
  foo6(a,b,nn);

  result = 0.0;
  for (i = 0; i < nn; i++) {
    result += a[i];
  }

  printf("%f\n", result);
  return 0;
}

