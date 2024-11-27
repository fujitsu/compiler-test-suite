#include <stdio.h>
#include <math.h>

#define N 100

void test1(double * restrict a,
	   double * restrict b,
	   double * restrict m1) {
  int i;

  for (i=0; i<N; ++i) {
    if (m1[1] > 0.0) {
      a[i] = a[i] + b[i];
    }
  }
}

void test2(double * a,
	   double * restrict b,
	   double * restrict m1) {
  int i;

  for (i=0; i<N; ++i) {
    if (m1[1] > 0.0) {
      a[i] = a[i] + b[i];
    }
  }
}

void test3(double * restrict a,
	   double * restrict b,
	   double * restrict m1,
	   double * restrict m2) {
  int i;

  for (i=0; i<N; ++i) {
    if (m1[1] > 0.0) {
      if (m2[2] > 0.0) {
	a[i] = a[i] + b[i];
      }
    }
  }
}

void test4(double * a,
	   double * restrict b,
	   double * restrict m1,
	   double * restrict m2) {
  int i;

  for (i=0; i<N; ++i) {
    if (m1[1] > 0.0) {
      if (m2[2] > 0.0) {
	a[i] = a[i] + b[i];
      }
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

#define ANS  (double)40.000000
#define ABSOLUTE_ERROR (double)0.00001

int main(void) {
  double a[N], b[N], m1[N], m2[N];
  double rk;

  forall_init(a, 0.0);
  forall_init(b, 0.1);
  forall_init(m1, 1.0);
  forall_init(m2, 1.0);

  test1(a, b, m1);
  test2(a, b, m1);
  test3(a, b, m1, m2);
  test4(a, b, m1, m2);
  rk = sum(a);
  if (fabs(rk - ANS) <= ABSOLUTE_ERROR) {
    printf("ok\n");
  } else {
    printf("ng: rk=%lf, ANS=%lf, ABSOLUTE_ERROR=%lf\n", rk, ANS, ABSOLUTE_ERROR);
  }

  return 0;
}
