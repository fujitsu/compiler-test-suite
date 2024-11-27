#include <stdio.h>
#include <math.h>

#define N 300
#define M 300
double a[N][M];
double b[N][M];
double c[N][M];

void foo(int mm, int nn) {
  int i,j;
  for (j=0; j<nn; ++j) {
    for (i=0; i<mm; ++i) {
      a[j][i] += b[i][j]*c[i][j];
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

#define ANS  (double)4.0000
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
  foo(4,4);
  s = suma();
  if (fabs(s - ANS) <= DIFF) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
