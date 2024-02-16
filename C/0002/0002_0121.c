#include <stdio.h>
#include <stdlib.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE float
#define LNUM 20
#define EXPECTED_VALUE -9133300.000000
ELEMENT_TYPE sub() {
  ELEMENT_TYPE x[LNUM], y[LNUM], z[LNUM], res[LNUM], ans;
  int i;
  ans = 0;
  for (i=0; i<LNUM; i++) {
    x[i] = i;
    y[i] = i*i;
    z[i] = i*i*i;
    res[i] = 0;
  }
  for (i=0; i<LNUM; i++) {
    res[i] = x[i] + (-y[i]) * z[i];
    res[i] -= x[i];
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
