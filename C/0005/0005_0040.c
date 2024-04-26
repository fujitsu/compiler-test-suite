#include <stdio.h>
#include <stdlib.h>

_Noreturn void finish(void){
  printf("ok\n");
  quick_exit(0);
}


int main(void){

  finish();

  printf("ng\n");

  return 0;
}
