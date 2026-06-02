__thread int gia[4] = { 1, 2, 3, 4 };
extern void icheck() __attribute__((noinline));
void interface_check(int i) {
  gia[2] = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gia[2]);
}

int main() {
  interface_check(-2);
  return 0;
}

