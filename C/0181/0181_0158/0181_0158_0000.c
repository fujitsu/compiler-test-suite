

#include <stdio.h>

typedef int test1;
extern long int foo(void);

int main(void) {
  test1 var;
  var = 1;
  if (foo() == 2 && var == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
