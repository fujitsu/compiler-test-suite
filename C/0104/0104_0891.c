#include <stdio.h>
#include <math.h>

#define N 300
#define M 4
double a[N][M];
double b[N][M];
double c[N][M];

void foo(int m) {
  int i,j;
  for (j=0; j<N; ++j) {
    for (i=0; i<m; ++i) {
      a[j][i] += b[j][i]*c[j][i];
    }
  }
}

double suma(void) {
  int i,j;
  double s;
  s = 0.0;
  for (j=0; j<N; ++j) {
    for (i=0; i<M; ++i) {
      s += a[j][i];
    }
  }
  return s;
}

#define ANS  (double)300.0000
#define DIFF (double)0.0

int main(void) {
  int i,j;
  double s;
  for (j=0; j<N; ++j) {
    for (i=0; i<M; ++i) {
      a[j][i] = 0.0;
      b[j][i] = 0.5;
      c[j][i] = 0.5;
    }
  }
  foo(M);
  s = suma();
  if (fabs(s - ANS) <= DIFF) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
