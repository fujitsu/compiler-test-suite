static __thread float _Complex gfc;
static __thread double _Complex gdc;
static __thread long double _Complex gldc;
static void ccheck(void) __attribute__((noinline));
static void interface_check(float _Complex fc, double _Complex dc, long double _Complex ldc) {
  gfc = fc;
  gdc = dc;
  gldc = ldc;
  ccheck();
}


#include <stdio.h>
#include <complex.h>
static void ccheck() {
  printf("%f\n", crealf(gfc));
  printf("%f\n", cimagf(gfc));
  printf("%lf\n", creal(gdc));
  printf("%lf\n", cimag(gdc));
  printf("%Lf\n", creall(gldc));
  printf("%Lf\n", cimagl(gldc));
}

int lto_sub_81() {
  interface_check(1.0F + 2.0iF, 3.0 + 4.0i, 5.0L + 6.0iL);
  return 0;
}

