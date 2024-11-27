#include <stdio.h>
#include <math.h>

#define N 10

double a[N];
double b[N];
double c[N];
double d[N];
double e[N];
double f[N];
double g[N];
double h[N];

void foo(int x1,int x2, int x3, int x4,int n) {
  int i;
  for (i=0; i<n; ++i) {

    if (x1 == 0) {
      a[i] = b[i];
    }
    if (x2 == 0) {
      c[i] = d[i];
    }

    if (x3 == 0) {
      e[i] = f[i];
    }

    if (x4 == 0) {
      g[i] = h[i];
    }
  }
  return;
}

double sum_a_c_e(void) {
  int i;
  double s;
  s = 0.0;

  for (i=0; i<N; ++i) {
    s += a[i];
    s += c[i];
    s += e[i];
    s += g[i];
  }
  return s;
}

#define ANS  (double)50.0000

int main(void) {
  int i,x1,x2,x3,x4;
  double s;

  x1 = 1;
  x2 = 0;
  x3 = 0;
  x4 = 1;
  
  for (i=0; i<N; ++i) {
    a[i] = 0.0;
    b[i] = 1.0;
    c[i] = 0.0;
    d[i] = 2.0;
    e[i] = 0.0;
    f[i] = 3.0;
    g[i] = 0.0;
    h[i] = 4.0;
  }

  foo(x1,x2,x3,x4,N);
  s = sum_a_c_e();
  if (s == ANS) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
