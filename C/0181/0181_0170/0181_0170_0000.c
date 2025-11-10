

#include <stdio.h>

union str1 {
  int value;
};
typedef union str1 str;
extern int foo(void);

int main(void) {
  str var;
  var.value = 1;
  if (foo() == 2 && var.value == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
