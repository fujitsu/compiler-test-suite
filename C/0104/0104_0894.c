#include <stdio.h>
#include <math.h>

#define N 300
#define M 300
double a[N][M];
double b[N][M];
double c[N][M];

void foo(int nn) {
  int i,j;
  for (j=0; j<nn; ++j) {
    for (i=0; i<4; ++i) {
      a[j][i] += b[j][i]*c[j][i];
    }
  }
}

double suma(int nn) {
  int i,j;
  double s;
  s = 0.0;
  for (j=0; j<nn; ++j) {
    for (i=0; i<5; ++i) {
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
  foo(N);
  s = suma(N);
  if (fabs(s - ANS) <= DIFF) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
