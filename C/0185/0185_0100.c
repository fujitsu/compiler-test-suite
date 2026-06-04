static __thread int si;
extern void icheck(int, int *) __attribute__((noinline));
void interface_check() {
  int i;
  i = si;
  icheck(i, &i);
}


#include <stdio.h>
void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int main() {
  si = 2;
  interface_check();
  return 0;
}

