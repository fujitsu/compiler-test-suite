static __thread int si;
static void icheck(int, int *) __attribute__((noinline));
static void interface_check() {
  int *i;
  i = &si;
  icheck(*i, i);
}


#include <stdio.h>
static void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int lto_sub_65() {
  si = 2;
  interface_check();
  return 0;
}

