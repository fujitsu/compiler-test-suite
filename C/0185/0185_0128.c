static __thread int si;
extern void icheck(void) __attribute__((noinline));
void interface_check(int i) {
  si = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", si);
}

int main() {
  interface_check(1);
  return 0;
}

