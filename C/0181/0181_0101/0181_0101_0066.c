static __thread int gia[4] = { 1, 2, 3, 4 };
static void icheck(int, int *) __attribute__((noinline));
static void interface_check() {
  int *i;
  i = gia;
  icheck(*i, i);
}


#include <stdio.h>
static void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int lto_sub_66() {
  interface_check();
  return 0;
}

