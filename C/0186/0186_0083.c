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
#define ROLL_TIMES 99

struct str {
  ELEMENT_TYPE1 x1;
  ELEMENT_TYPE2 b;
  ELEMENT_TYPE1 x2;
  ELEMENT_TYPE2 x3;
};

struct str data;

void sub(ELEMENT_TYPE1 *a, int n) {
  long i;

  for (i=0; i<n; i++) {
    a[i] = data.b;
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 *a) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
  }
  data.b = (ROLL_TIMES / 2)+1;
  data.x1 = 1;
  data.x2 = 2;
  data.x3 = 3;
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  long i;

  master = 0;
  ans = 0;
  init(a);
  sub(a,ROLL_TIMES);

  for (i=0; i<ROLL_TIMES; i++) {
    master += data.b;
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

