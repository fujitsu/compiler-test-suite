__thread int gi;
extern void icheck(void) __attribute__((noinline));
void interface_check(int i) {
  gi = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gi);
}

int main() {
  interface_check(1);
  return 0;
}

