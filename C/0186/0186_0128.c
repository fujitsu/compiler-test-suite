#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE double
#define ROLL_TIMES 100

void sub(ELEMENT_TYPE *a) {
  long i,j;
  i = 0;
  for (j=0; j< ROLL_TIMES/4; j++) {
    a[i] = i;
    i++;
    a[i] = i;
    i++;
    a[i] = i;
    i++;
    a[i] = i;
    i++;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE a[ROLL_TIMES];
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

