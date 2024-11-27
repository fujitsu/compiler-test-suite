#include <stdio.h>
#include <math.h>
#include <complex.h>

#define equal_r4check(val1, val2) (fabsf((val1) - (val2))/fabsf((val1)) >= 1.0e-6f)
#define equal_r8check(val1, val2) (fabs((val1) - (val2))/fabs((val1)) >= 1.0e-13)

typedef double _Complex (*XXX)(double _Complex v1);

#define n 10000

void compiler_inline_tan(double _Complex * restrict a, double _Complex * restrict b) {
  int i;
  for (i=0; i<n; ++i) {
    a[i] = cexp(b[i]);
  }
}

void outinline_tan(double _Complex * restrict a, double _Complex * restrict b, XXX func) {
  int i;
  for (i=0; i<n; ++i) {
    a[i] = func(b[i]);
  }
}

int main(void) {
  double _Complex a1[n], a2[n];
  double _Complex b1[n], b2[n];
  int i, c;
  double xs, xe, w, x;
  xs = -1.0;
  xe = 1.0;
  w = (xe - xs) / (double)n;
  x = xs;
  for (i=0; i<n; ++i) {
    a1[i] = 0.0 + 0.0i;
    b1[i] = x + 1.0i;
    a2[i] = 0.0 + 0.0i;
    b2[i] = x + 1.0i;
    x = x + w;
  }

  compiler_inline_tan(a1,b1);
  outinline_tan(a2,b2,cexp);

  c = 0;
  for (i=0; i<n; ++i) {
    if (equal_r4check(a1[i],a2[i])) {
      fprintf(stdout, "NG: i=%d : %lf,%lf != %lf,%lf\n", a1[i], a2[i]);
      ++c;
    }
  }
  if (c == 0) {
    fprintf(stdout, "OK\n");
  }
  return 0;
}
