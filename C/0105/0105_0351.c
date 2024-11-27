#include <stdio.h>
#include <math.h>
#include <float.h>

#define equal_r4check(val1, val2) (fabsf((val1) - (val2))/fabsf((val1)) >= 1.0e-6F)
#define equal_r8check(val1, val2) (fabs((val1) - (val2))/fabs((val1)) >= 1.0e-13)

typedef double (*XXX)(double v1);

#define N 10000

void compiler_inline_tan(double * restrict a, double * restrict b) {
  int i;
  for (i=0; i<N; ++i) {
    a[i] = tan(b[i]);
  }
}

void outinline_tan(double * restrict a, double * restrict b, XXX func) {
  int i;
  for (i=0; i<N; ++i) {
    a[i] = func(b[i]);
  }
}

int main(void) {
  double a1[N], b1[N], a2[N], b2[N];
  int i, c;
  double xs, xe, w, x;
  xs = DBL_MIN/4.0;
  xe = DBL_MAX/4.0;
  w = (xe - xs) / (double)N;
  x = xs;
  for (i=0; i<N; ++i) {
    a1[i] = 0.0;
    b1[i] = x;
    a2[i] = 0.0;
    b2[i] = x;
    x = x + w;
  }

  compiler_inline_tan(a1,b1);
  outinline_tan(a2,b2,tan);

  c = 0;
  for (i=0; i<N; ++i) {
    if (equal_r8check(a1[i],a2[i])) {
      fprintf(stdout, "NG: i=%d : %lf != %lf\n", a1[i], a2[i]);
      ++c;
    }
  }
  if (c == 0) {
    fprintf(stdout, "OK\n");
  }
  return 0;
}
