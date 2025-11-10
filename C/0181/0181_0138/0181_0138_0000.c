

#include <stdio.h>

extern int foo(void);

int main(void) {
  enum number {Zero, One, Two} num;
  num = Zero;
  if (foo() == 1 && num == 0) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
