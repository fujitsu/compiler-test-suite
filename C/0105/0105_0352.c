#include <stdio.h>
#include <math.h>
#include <float.h>

#define equal_r4check(val1, val2) (fabsf((val1) - (val2))/fabsf((val1)) >= 1.0e-6F)
#define equal_r8check(val1, val2) (fabs((val1) - (val2))/fabs((val1)) >= 1.0e-13)

typedef float (*XXX)(float v1);

#define N 10000

void compiler_inline_tan(float * restrict a, float * restrict b) {
  int i;
  for (i=0; i<N; ++i) {
    a[i] = tanf(b[i]);
  }
}

void outinline_tan(float * restrict a, float * restrict b, XXX func) {
  int i;
  for (i=0; i<N; ++i) {
    a[i] = func(b[i]);
  }
}

int main(void) {
  float a1[N], b1[N], a2[N], b2[N];
  int i, c;
  float xs, xe, w, x;
  xs = -1.0f;
  xe = 1.0f;
  w = (xe - xs) / (float)N;
  x = xs;
  for (i=0; i<N; ++i) {
    a1[i] = 0.0f;
    b1[i] = x;
    a2[i] = 0.0f;
    b2[i] = x;
    x = x + w;
  }

  compiler_inline_tan(a1,b1);
  outinline_tan(a2,b2,tanf);

  c = 0;
  for (i=0; i<N; ++i) {
    if (equal_r4check(a1[i],a2[i])) {
      fprintf(stdout, "NG: i=%d : %f != %f\n", a1[i], a2[i]);
      ++c;
    }
  }
  if (c == 0) {
    fprintf(stdout, "OK\n");
  }
  return 0;
}
