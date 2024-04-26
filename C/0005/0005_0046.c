#include <stdio.h>

int main(void){
  const int x = 10;

  _Static_assert(1, "");
  _Static_assert(!NULL, "");

  printf("ok\n");

  return 0;
}
