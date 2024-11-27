#include <stdio.h>
#include <math.h>

#define N 10

double a[N];
double b[N];
double c[N];
double d[N];
double e[N];
double f[N];

void foo(int x1,int x2, int x3, int n) {
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
  }
  return s;
}

#define ANS  (double)40.0000

int main(void) {
  int i,x1,x2,x3;
  double s;

  x1 = 0;
  x2 = 1;
  x3 = 0;
  
  for (i=0; i<N; ++i) {
    a[i] = 0.0;
    b[i] = 1.0;
    c[i] = 0.0;
    d[i] = 2.0;
    e[i] = 0.0;
    f[i] = 3.0;
  }

  foo(x1,x2,x3,N);
  s = sum_a_c_e();
  if (s == ANS) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
