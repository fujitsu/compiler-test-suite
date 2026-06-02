extern __thread int gia[4];
extern void icheck() __attribute__((noinline));
void interface_check(int indx, int i) {
  gia[indx+2] = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gia[3]);
}

int main() {
  interface_check(1, -1024);
  return 0;
}

