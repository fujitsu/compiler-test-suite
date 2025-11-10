

#include <stdio.h>

struct str1{
  int value;
};
typedef struct str1 test;

extern int foo(void);

int main(void) {
  test var;
  var.value = 1;
  if (foo() == 2 && var.value == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
