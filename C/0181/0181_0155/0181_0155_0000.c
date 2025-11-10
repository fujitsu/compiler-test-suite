

#include <stdio.h>

typedef int test;
extern double foo(void);

int main(void) {
  test var;
  var = 1;
  if (foo() == 2.5 && var == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
