static __thread double gd;
extern void icheck(double *) __attribute__((noinline));
void interface_check() {
  int i;
  double gda[100];
  for(i=0;i<100;++i) {
    gda[i] = gd;
  }
  icheck(gda);
}


#include <stdio.h>
void icheck(double *p) {
  int i;
  double val = 0.0;
  for(i=0;i<100;++i) {
    val += p[i];
  }
  printf("%lf\n", val);
}

int main() {
  gd = 2.0;
  interface_check();
  return 0;
}

