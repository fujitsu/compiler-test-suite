
#include <float.h>
#include <stdbool.h>
#include <stdio.h>
#include <math.h>

#define MAIN int main
#define OK_PRINT puts("OK")
#define ERROR_PRINT puts("NG")
#define PA_START
#define PA_STOP

#if defined(NOMOD)
#define n 64
#else
#define n 65
#endif

static bool dbl_is_equal(double a, double b);

void init(double *a,double *b,double *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    res[i] = cos(b[i]) + sin(b[i]);
  }
}

void test(double *a,double *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = cos(b[i]) + sin(b[i]);
  }
  PA_STOP
}

MAIN() {
  double a[n];
  double b[n],res[n];
  int i;
  init (a,b,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b);
  }
  for (i = 0;i < n;i++) {
    if (!dbl_is_equal(a[i],res[i])) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}

static bool dbl_is_equal(double a, double b) {
  double diff, eps;
  if( a == b ) {
    return true;
  }
  if( isnan(a) || isnan(b) ) {
    return false;
  }
  if( isinf(a) && isinf(b) && a > 0 && b > 0
      || isinf(a) && isinf(b) && a < 0 && b < 0 ) {
    return true;
  }
  if( isinf(a) && a > 0 && b > DBL_MAX * (1.0 - sqrt(DBL_EPSILON)) 
      || isinf(a) && a < 0 && b < DBL_MIN * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b > 0 && a > DBL_MAX * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b < 0 && a < DBL_MIN * (1.0 - sqrt(DBL_EPSILON)) ) {
    return true;
  }
  if( a == 0.0 && fabs(b) < sqrt(DBL_EPSILON)
      || b == 0.0 && fabs(a) < sqrt(DBL_EPSILON) ) {
    return true;
  }
  eps = DBL_EPSILON *1.0e+2 * fmin(fabs(a), fabs(b));
  diff = fabs(a - b);
  return (diff < eps);
}
