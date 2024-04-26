#include <stdio.h>
#include <stdalign.h>

int main(void){

#if defined __alignas_is_defined && __alignof_is_defined

  alignas(32) int x;
  int y = alignof(int);

  printf("ok\n");
#else
  printf("ng\n");
#endif

  return 0;
}
