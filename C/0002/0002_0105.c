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
#define ELEMENT_TYPE float
#define LNUM 20
#define EXPECTED_VALUE 2280.000000
ELEMENT_TYPE sub() {
  ELEMENT_TYPE x[LNUM], y[LNUM], res[LNUM], ans;
  int i;
  ans = 0;
  for (i=0; i<LNUM; i++) {
    x[i] = i;
    y[i] = i*i;
    res[i] = 0;
  }
  for (i=0; i<LNUM; i++) {
    res[i] = fabsf(x[i] - y[i]);
  }
  for (i=0; i<LNUM; i++) {
    ans += res[i];
  }
  
  return ans;
}
  
#ifndef ASM_ONLY
int main() {
  if (sub() == EXPECTED_VALUE) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif
