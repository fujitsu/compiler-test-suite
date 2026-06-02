__thread int gia[4] = { 1, 2, 3, 4 };
extern void icheck(void) __attribute__((noinline));
void interface_check(int indx, int i) {
  gia[indx+2] = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gia[3]);
}

int main() {
  interface_check(1, -3);
  return 0;
}

