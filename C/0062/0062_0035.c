#include <stdio.h>
#include <math.h>

#define N 100

void sub(double * restrict a,
	 double * restrict b,
	 double rc) {
  int i;

  for (i=0; i<N; ++i) {
    if (rc > 0.0) {
      a[i] = a[i] + b[i];
    }
  }
}

static void forall_init(double *a, const double v) {
  int i;

  for (i=0; i<N; ++i) {
    a[i] = v;
  }
}

static double sum(double *a)
{
  int i;
  double rk;
  rk = 0.0;
  for (i=0; i<N; ++i) {
    rk += a[i];
  }
  return rk;
}

#define ANS  (double)10.000000
#define ABSOLUTE_ERROR (double)0.00001

int main(void) {
  double a[N], b[N];
  double rk, rc;

  forall_init(a, 0.0);
  forall_init(b, 0.1);

  rc = 1.0;
  sub(a, b, rc);
  rk = sum(a);
  if (fabs(rk - ANS) <= ABSOLUTE_ERROR) {
    printf("ok\n");
  } else {
    printf("ng: rk=%lf, ANS=%lf, ABSOLUTE_ERROR=%lf\n", rk, ANS, ABSOLUTE_ERROR);
  }

  return 0;
}
