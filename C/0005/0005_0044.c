#include <stdio.h>
#include <stdlib.h>
#include <stdnoreturn.h>

noreturn void finish(void){
  printf("ok\n");
  quick_exit(0);
}

int main(void){
  finish();

  return 0;
}
