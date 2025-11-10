

#include <stdio.h>
static int foo(void);
extern int boo(void);

int main(void) {
  foo();
  boo();
}

static int foo(void){
  printf("First\n");
  return 0;
}
