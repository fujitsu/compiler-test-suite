#include <stdio.h>
#include <math.h>

#define N 100000
#define M 4
double a[N];

void foo(int m) {
  int i;
  for (i=0; i<m; ++i) {
    a[i] = 0.1;
  }
}

double suma(int m) {
  int i;
  double s;
  s = 0.0;
  for (i=0; i<m; ++i) {
    s += a[i];
  }
  return s;
}

#define ANS  (double)0.4
#define DIFF (double)0.0

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
