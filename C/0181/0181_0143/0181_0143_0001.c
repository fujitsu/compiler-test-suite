

#include <stdio.h>
static int foo2(void);
int boo(void){
  return foo2();
}

static int foo2(void){
  printf("Second\n");
  return 0;
}
