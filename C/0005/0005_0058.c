#include <stdio.h>
#include <complex.h>

int main(void){

#if !defined (__STDC_NO_COMPLEX__) && defined (__STDC_IEC_559_COMPLEX__)
  printf("ok\n");
#else
  printf("ng\n");
#endif

  return 0;
}
