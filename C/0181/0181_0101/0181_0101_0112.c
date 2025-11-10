static __thread int gia[4];
static void icheck(void) __attribute__((noinline));
static void interface_check(int i) {
  gia[2] = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", gia[2]);
}
static void iinit(int *ia) __attribute__((noinline));
static void iinit(int *ia) {
  int i;
  for(i=0; i<4; ++i) {
    ia[i] = i+1;
  }
}
int lto_sub_113() {
  iinit(gia);
  interface_check(-5);
  return 0;
}

