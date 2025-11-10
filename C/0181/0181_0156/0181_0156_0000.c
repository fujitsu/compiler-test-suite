

#include <stdio.h>

typedef int test;
extern int foo(void);

int main(void) {
  test var;
  var = 1;
  if (foo() == 2 && var == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
