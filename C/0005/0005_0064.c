#include <stdio.h>

int main(void){

#if !defined (__STDC_ANALYZABLE__)
  printf("ok\n");
#else
  printf("ng\n");
#endif

  return 0;
}
