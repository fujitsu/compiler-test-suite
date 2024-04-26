#include <stdio.h>

int main(void){
  _Alignas(128) int x = 10;
  int _Alignas(double) y = 20;
  
  int a = _Alignof(double);

  printf("ok\n");

  return 0;
}
