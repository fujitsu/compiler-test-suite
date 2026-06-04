__thread int gia[4] = { 1, 2, 3, 4 };
extern void icheck(int, int *) __attribute__((noinline));
void interface_check(int indx) {
  int i;
  i = gia[indx];
  icheck(i, &i);
}


#include <stdio.h>
void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int main() {
  interface_check(1);
  return 0;
}

