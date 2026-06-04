#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 unsigned int
#define ELEMENT_TYPE2 long double
#define ROLL_TIMES 256

ELEMENT_TYPE2 b;

void sub(ELEMENT_TYPE1 *a) {
  long i;
  ELEMENT_TYPE1 tmp;
  for (i=0; i<ROLL_TIMES; i++) {
    tmp = 0;
    a[i] += b;
    tmp += b;
    a[i] += tmp;
  }
}

void init(ELEMENT_TYPE1 *a) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  long i;
  ELEMENT_TYPE1 tmp;

  master = 0;
  ans = 0;
  init(a);

  sub(a);

  for (i=0; i<ROLL_TIMES; i++) {
    tmp = 0;
    master +=b;
    tmp += b;
    master += tmp;
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

