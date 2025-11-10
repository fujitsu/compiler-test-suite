static __thread float gfa[100];
static void fcheck() __attribute__((noinline));
static void interface_check() {
  int i;
  for(i=0;i<100;++i) {
    gfa[i] = 1.0F;
  }
  fcheck();
}


#include <stdio.h>
#include <complex.h>
static void fcheck() {
  int i;
  float val = 0.0;
  for(i=0;i<100;++i) {
    val += gfa[i];
  }
  printf("%f\n", val);
}

int lto_sub_104() {
  interface_check();
  return 0;
}

