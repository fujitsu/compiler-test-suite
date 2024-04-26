#include <stdio.h>
#include <stdlib.h>

_Noreturn void finish2(void);

int main(void){
  finish2();
  return 0;
}

void finish2(void){
  printf("ok\n");
  quick_exit(0);
}
