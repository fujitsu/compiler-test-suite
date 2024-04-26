#include <stdio.h>

void func(void){
  _Thread_local static int y;
  extern _Thread_local int z;

  printf("ok\n"); 
}

int main(void){
  func();

  return 0;
}
