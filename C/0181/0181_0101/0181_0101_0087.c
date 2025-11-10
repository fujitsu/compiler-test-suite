static __thread int gia[4] = { 1, 2, 3, 4 };
static void icheck(int, int *) __attribute__((noinline));
static void interface_check(int indx) {
  int i;
  i = gia[indx];
  icheck(i, &i);
}


#include <stdio.h>
static void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int lto_sub_87() {
  interface_check(1);
  return 0;
}

