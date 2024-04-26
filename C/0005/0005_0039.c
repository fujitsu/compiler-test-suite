#include <stdio.h>
#if !defined(__STDC_NO_ATOMICS__)
#include <stdatomic.h>
#endif

int main(void){

#if 0
#else
  printf("ok\n");
#endif

  return 0;
}
