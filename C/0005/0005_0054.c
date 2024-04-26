#include <stdio.h>
#include <float.h>
#include <math.h>

int main(void){
  if(fabsf(FLT_TRUE_MIN  - 1.40129846432481707092e-45F)  < FLT_EPSILON &&
     fabs (DBL_TRUE_MIN  - 4.94065645841246544177e-324) < DBL_EPSILON &&
     fabsl(LDBL_TRUE_MIN -
#if defined(__x86_64)
                           3.6451995318824746025e-4951L
#else
                           6.4751751194380251109e-4966L
#endif
                                                       ) < LDBL_EPSILON){  
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
