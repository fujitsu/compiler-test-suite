static __thread int gia[4];
extern void icheck(void) __attribute__((noinline));
void interface_check(int i) {
  gia[2] = i;
  icheck();
}


#include <stdio.h>
void icheck() {
  printf("%d\n", gia[2]);
}
extern void iinit(int *ia) __attribute__((noinline));
void iinit(int *ia) {
  int i;
  for(i=0; i<4; ++i) {
    ia[i] = i+1;
  }
}
int main() {
  iinit(gia);
  interface_check(-5);
  return 0;
}

