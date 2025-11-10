static __thread int si;
static void icheck(void) __attribute__((noinline));
static void interface_check(int i) {
  si = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", si);
}

int lto_sub_106() {
  interface_check(1);
  return 0;
}

