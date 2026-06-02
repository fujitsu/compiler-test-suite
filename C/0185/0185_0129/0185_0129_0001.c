extern __thread int ei;
extern void icheck(void) __attribute__((noinline));
void interface_check(int i) {
  ei = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", ei);
}

int main() {
  interface_check(-1);
  return 0;
}

