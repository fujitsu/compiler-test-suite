extern __thread int gia[4];
extern void icheck(int, int *) __attribute__((noinline));
void interface_check() {
  int *i;
  i = &gia[0];
  icheck(*i, i);
}


#include <stdio.h>
void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int main() {
  interface_check();
  return 0;
}

