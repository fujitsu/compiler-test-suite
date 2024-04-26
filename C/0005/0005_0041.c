#include <stdio.h>
#include <stdlib.h>

_Noreturn void finish1(void);

int main(void){
  finish1();
  return 0;
}


_Noreturn void finish1(void){
  printf("ok\n");
  quick_exit(0);
}

