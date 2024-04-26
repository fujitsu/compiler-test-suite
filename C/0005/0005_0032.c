#include <stdio.h>
#include <stddef.h>

int main(void){
  _Alignas(max_align_t) int x;
  _Alignas( _Alignof(max_align_t) ) int y;
  int z = _Alignof(max_align_t);

  printf("ok\n");

  return 0;
}
