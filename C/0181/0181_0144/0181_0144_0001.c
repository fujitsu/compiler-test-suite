

#include <stdio.h>
static int foo(void);
int boo(void){
  return foo();
}

static int foo(void){
  printf("Second\n");
  return 0;
}
