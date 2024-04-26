#include <stdio.h>
#include <float.h>

int main(void){

#if defined FLT_DECIMAL_DIG && defined DBL_DECIMAL_DIG && defined LDBL_DECIMAL_DIG && \
  defined FLT_HAS_SUBNORM && defined DBL_HAS_SUBNORM && defined LDBL_HAS_SUBNORM && \
  defined FLT_TRUE_MIN && defined DBL_TRUE_MIN && defined LDBL_TRUE_MIN 
  printf("ok\n");
#else
  printf("ng\n");
#endif

  return 0;
}
