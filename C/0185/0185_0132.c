__thread int gia[4] = { 1, 2, 3, 4 };
extern void icheck(void) __attribute__((noinline));
void interface_check(int indx, int i) {
  gia[indx] = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gia[1]);
}

int main() {
  interface_check(1, 3);
  return 0;
}

