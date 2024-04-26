#include <stdio.h>
#include <float.h>

int main(void){
#if FLT_DECIMAL_DIG == 9 && \
  DBL_DECIMAL_DIG == 17	 && \
 (( defined(__x86_64) && LDBL_DECIMAL_DIG == 21) || \
  (!defined(__x86_64) && LDBL_DECIMAL_DIG == 36))
  printf("ok\n");
#else
  printf("ng\n");
#endif

  return 0;
}
