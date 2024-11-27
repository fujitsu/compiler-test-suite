#include <stdio.h>
#include <math.h>

#define N 100000
#define M 4
double a[N];
double b[N];

void foo(int m) {
  int i;
  for (i=0; i<m; ++i) {
    a[i] = 0.1;
    b[i] = 0.1;
  }
}

double suma(int m) {
  int i;
  double s;
  s = 0.0;
  for (i=0; i<m; ++i) {
    s += a[i]*b[i];
  }
  return s;
}

#define ANS  (double)0.04
#define DIFF (double)0.000000000001

int main(void) {
  double s;
  foo(M);
  s = suma(M);
  if (fabs(s - ANS) <= DIFF) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
