#include <stdio.h>
#include <stdlib.h>

void finish3(void);

int main(void){
  finish3();
  return 0;
}

_Noreturn void finish3(void){
  printf("ok\n");
  quick_exit(0);
}
