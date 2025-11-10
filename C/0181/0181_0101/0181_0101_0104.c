static __thread int gi;
static void icheck(void) __attribute__((noinline));
static void interface_check(int i) {
  gi = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", gi);
}

int lto_sub_105() {
  interface_check(1);
  return 0;
}

