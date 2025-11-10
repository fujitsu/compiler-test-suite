static __thread float _Complex gfc;
static __thread double _Complex gdc;
static __thread long double _Complex gldc;
static void ccheck(float _Complex *, double _Complex *, long double _Complex *) __attribute__((noinline));
static void interface_check() {
  float _Complex fc;
  double _Complex dc;
  long double _Complex ldc;
  fc = gfc;
  dc = gdc;
  ldc = gldc;
  ccheck(&fc, &dc, &ldc);
}


#include <stdio.h>
#include <complex.h>
static void ccheck(float _Complex *fcp, double _Complex *dcp, long double _Complex *ldcp) {
  printf("%f\n", crealf(*fcp));
  printf("%f\n", cimagf(*fcp));
  printf("%lf\n", creal(*dcp));
  printf("%lf\n", cimag(*dcp));
  printf("%Lf\n", creall(*ldcp));
  printf("%Lf\n", cimagl(*ldcp));
}

int lto_sub_80() {
  gfc = 1.0F + 2.0iF;
  gdc = 3.0 + 4.0i;
  gldc = 5.0L + 6.0iL;
  interface_check();
  return 0;
}

