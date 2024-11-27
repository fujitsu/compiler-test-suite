#include <stdio.h>
#include <math.h>
#include <complex.h>

#define equal_r4check(val1, val2) (fabsf((val1) - (val2))/fabsf((val1)) >= 1.0e-6f)
#define equal_r8check(val1, val2) (fabs((val1) - (val2))/fabs((val1)) >= 1.0e-13)

typedef float _Complex (*XXX)(float _Complex v1);

#define n 10000

void compiler_inline_tan(float _Complex * restrict a, float _Complex * restrict b) {
  int i;
  for (i=0; i<n; ++i) {
    a[i] = cexpf(b[i]);
  }
}

void outinline_tan(float _Complex * restrict a, float _Complex * restrict b, XXX func) {
  int i;
  for (i=0; i<n; ++i) {
    a[i] = func(b[i]);
  }
}

int main(void) {
  float _Complex a1[n], a2[n];
  float _Complex b1[n], b2[n];
  int i, c;
  float xs, xe, w, x;
  xs = -1.0f;
  xe = 1.0f;
  w = (xe - xs) / (float)n;
  x = xs;
  for (i=0; i<n; ++i) {
    a1[i] = 0.0f + 0.0fi;
    b1[i] = x + 1.0fi;
    a2[i] = 0.0f + 0.0fi;
    b2[i] = x + 1.0fi;
    x = x + w;
  }

  compiler_inline_tan(a1,b1);
  outinline_tan(a2,b2,cexpf);

  c = 0;
  for (i=0; i<n; ++i) {
    if (equal_r4check(a1[i],a2[i])) {
      fprintf(stdout, "NG: i=%d : %f,%f != %f,%f\n", a1[i], a2[i]);
      ++c;
    }
  }
  if (c == 0) {
    fprintf(stdout, "OK\n");
  }
  return 0;
}
