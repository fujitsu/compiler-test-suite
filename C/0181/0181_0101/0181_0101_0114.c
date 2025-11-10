static __thread int gia[4] = { 1, 2, 3, 4 };
static void icheck(void) __attribute__((noinline));
static void interface_check(int indx, int i) {
  gia[indx+2] = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", gia[3]);
}

int lto_sub_115() {
  interface_check(1, -10);
  return 0;
}

