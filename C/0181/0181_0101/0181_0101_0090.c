static __thread int gia[4];
static void icheck(int, int *) __attribute__((noinline));
static void interface_check() {
  int i;
  i = gia[0];
  icheck(i, &i);
}


#include <stdio.h>
static void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

static void iinit(int *ia) __attribute__((noinline));
void iinit(int *ia) {
  int i;
  for(i=0; i<4; ++i) {
    ia[i] = i+1;
  }
}
int lto_sub_90() {
  iinit(gia);
  interface_check();
  return 0;
}

