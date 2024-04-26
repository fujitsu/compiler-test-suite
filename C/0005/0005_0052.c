#include <stdio.h>
#include <float.h>

int main(void){
#if FLT_HAS_SUBNORM == 1 && \
  DBL_HAS_SUBNORM == 1 && \
  LDBL_HAS_SUBNORM == 1
  printf("ok\n");
#else
  printf("ng\n");
#endif

  return 0;
}
