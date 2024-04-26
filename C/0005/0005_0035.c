#include <stdio.h>

int main(void){
  _Alignas(4) _Alignas(16) _Alignas(32) int x = 10;
  _Alignas(32) _Alignas(4) _Alignas(16) int y = 10;

  printf("ok\n");

  return 0;
}
