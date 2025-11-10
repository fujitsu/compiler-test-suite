static __thread int gia[4] = { 1, 2, 3, 4 };
static void icheck(void) __attribute__((noinline));
static void interface_check(int i) {
  gia[0] = i;
  icheck();
}


#include <stdio.h>
static void icheck() {
  printf("%d\n", gia[0]);
}

int lto_sub_107() {
  interface_check(2);
  return 0;
}

