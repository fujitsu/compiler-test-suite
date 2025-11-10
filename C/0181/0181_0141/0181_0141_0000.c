

#include <stdio.h>
extern int foo(void);

int main(void) {
  if (foo() == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
