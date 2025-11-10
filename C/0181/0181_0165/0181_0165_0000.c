

#include <stdio.h>

union str {
  int value;
};
extern int foo(void);

int main(void) {
  union str var;
  var.value = 1;
  if (foo() == 2 && var.value == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
