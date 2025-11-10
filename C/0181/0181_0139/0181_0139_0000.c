

#include <stdio.h>

enum number1 {Zero, One, Two};
typedef enum number1 number;
extern int foo(void);

int main(void) {
  number num;
  num = Zero;
  if (foo() == 1 && num == 0) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
