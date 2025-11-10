

#include <stdio.h>

extern int foo(void);

int main(void) {
  struct str {
    int value;
  } var;
  var.value = 1;
  if (foo() == 2 && var.value == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
