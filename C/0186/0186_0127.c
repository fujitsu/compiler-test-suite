#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE double
#define ROLL_TIMES 99

void sub(ELEMENT_TYPE *a) {
  long i;
  for (i=0; i<ROLL_TIMES; i=i+4) {
    a[i] = i;
    a[i+1] = i+1;
    a[i+2] = i+2;
    a[i+3] = i+3;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE a[ROLL_TIMES+3];
  ELEMENT_TYPE ans,master;
  long i;

  master = 0;
  ans = 0;
  sub(a);

  for (i=0; i<ROLL_TIMES; i++) {
    master += i;
    ans += a[i];
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

