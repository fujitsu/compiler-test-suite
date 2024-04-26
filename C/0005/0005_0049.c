#include <stdio.h>
#include <assert.h>

int main(void){

#if defined (static_assert)
  static_assert(1, "ok");
  printf("ok\n");
#endif

  return 0;
}
