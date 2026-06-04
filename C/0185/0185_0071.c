__thread int gi;
extern void icheck(int, int *) __attribute__((noinline));
void interface_check() {
  int *i;
  i = &gi;
  icheck(*i, i);
}


#include <stdio.h>
void icheck(int i, int *p) {
  printf("%d\n", i);
  printf("%d\n", *p);
}

int main() {
  gi = 2;
  interface_check();
  return 0;
}

