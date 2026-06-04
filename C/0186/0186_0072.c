#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 signed short
#define ELEMENT_TYPE2 signed short
#define ROLL_TIMES 129

union uni {
  ELEMENT_TYPE1 x1[ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES];
  ELEMENT_TYPE1 x2[ROLL_TIMES];
  ELEMENT_TYPE2 x3[ROLL_TIMES];
};

union uni data;

void sub(ELEMENT_TYPE1 *a) {
  long i;
  ELEMENT_TYPE1 tmp;
  tmp = 0;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] += data.b[ROLL_TIMES-3];
    tmp += data.b[ROLL_TIMES-3];
    a[i] += tmp;
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 *a) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
  }
  data.b[ROLL_TIMES-3] = 1;
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  ELEMENT_TYPE1 tmp;
  
  long i;

  master = 0;
  ans = 0;
  init(a);
  sub(a);

  tmp = 0;
  for (i=0; i<ROLL_TIMES; i++) {
    master += data.b[ROLL_TIMES-3];
    tmp += data.b[ROLL_TIMES-3];
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

