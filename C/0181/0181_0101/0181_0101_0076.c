static __thread double gd;
static void icheck(double *) __attribute__((noinline));
static void interface_check() {
  int i;
  double gda[100];
  for(i=0;i<100;++i) {
    gda[i] = gd;
  }
  icheck(gda);
}


#include <stdio.h>
static void icheck(double *p) {
  int i;
  double val = 0.0;
  for(i=0;i<100;++i) {
    val += p[i];
  }
  printf("%lf\n", val);
}

int lto_sub_76() {
  gd = 2.0;
  interface_check();
  return 0;
}

