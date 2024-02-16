#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE double
#define EXPECTED_VALUE 10.000000
ELEMENT_TYPE sub(ELEMENT_TYPE x, 
		 ELEMENT_TYPE y, 
		 ELEMENT_TYPE ans) {
  ans = fabs(x-y);
  
  return ans;
}
  
#ifndef ASM_ONLY
int main() {
  if (sub(10,20,0) == EXPECTED_VALUE) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif
