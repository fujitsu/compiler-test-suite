#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 unsigned short
#define ELEMENT_TYPE2 unsigned int
#define ROLL_TIMES 256

void sub(ELEMENT_TYPE1 *a,
	 ELEMENT_TYPE2 *b) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = *b;
  }
}

void init(ELEMENT_TYPE1 *a,
	  ELEMENT_TYPE2 *b) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
    b[i] = i+i;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  long i;

  master = 0;
  ans = 0;
  init(a,b);

  sub(a,&b[ROLL_TIMES-1]);

  for (i=0; i<ROLL_TIMES; i++) {
    master +=b[ROLL_TIMES-1];
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

