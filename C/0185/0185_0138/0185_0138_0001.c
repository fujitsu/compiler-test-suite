extern __thread int gia[4];
extern void icheck() __attribute__((noinline));
void interface_check(int i) {
  gia[0] = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gia[0]);
}

int main() {
  interface_check(-99);
  return 0;
}

