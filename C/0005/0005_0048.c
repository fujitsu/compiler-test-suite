#include <stdio.h>
#include <assert.h>

int main(void){

#if defined (static_assert)
  printf("ok\n");
#endif

  return 0;
}
