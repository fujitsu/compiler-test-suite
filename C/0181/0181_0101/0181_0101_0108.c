static __thread int gia[4] = { 1, 2, 3, 4 };
static void icheck(void) __attribute__((noinline));
static void interface_check(int indx, int i) {
  gia[indx] = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", gia[1]);
}

int lto_sub_109() {
  interface_check(1, 3);
  return 0;
}

