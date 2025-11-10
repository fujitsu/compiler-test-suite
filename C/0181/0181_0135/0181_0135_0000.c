

#include <stdio.h>

enum number {Zero, One, Two};
extern int foo(void);

int main(void) {
  enum number num;
  num = Zero;
  if (foo() == 1 && num == 0) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
