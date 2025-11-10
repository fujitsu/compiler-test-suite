

#include <stdio.h>
extern int foo(void);

int main(void) {
  if (foo() == 2) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
