

#include <stdio.h>
int foo(void);
extern int boo(void);

int main(void) {
  foo();
  boo();
}

int foo(void){
  printf("First\n");
  return 0;
}
