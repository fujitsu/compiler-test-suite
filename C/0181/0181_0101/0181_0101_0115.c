static __thread int gia[4] = { 1, 2, 3, 4 };
static void icheck(void) __attribute__((noinline));
static void interface_check(int indx, int i) {
  gia[indx-2] = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", gia[2]);
}

int lto_sub_116() {
  interface_check(4, 1000);
  return 0;
}

