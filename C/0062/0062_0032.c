
#include <stdio.h>
#include <math.h>

#define N 100
#define ANS  (double)9999.000000
#define ABSOLUTE_ERROR (double)0.00001

void sub(double * a, const double *b)
{
  int i;

  for (i=1; i<N; ++i) {
    a[i] = a[i] + b[i];
  }
}

int main(void) {
  int i;
  double a[N], b[N];
  double rk;

  for (i=1; i<N; ++i) {
    a[i] = (double)i;
    b[i] = (double)(N-i+1);
  }
  sub(a,(const double *)b);
  rk = 0.0;
  for (i=1; i<N; ++i) {
    rk += a[i];
  }
  if (fabs(rk - ANS) < ABSOLUTE_ERROR) {
    printf("ok\n");
  } else {
    printf("ng rk=%lf, ANS=%lf, ABSOLUTE_ERROR=%lf\n", rk, ANS, ABSOLUTE_ERROR);
  }
  return 0;
}
