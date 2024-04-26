#include <stdio.h>

int main(void){

  _Static_assert(10 == 10, "");

  printf("ok\n");

  return 0;
}
