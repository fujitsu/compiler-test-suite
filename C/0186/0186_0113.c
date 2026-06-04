#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 int
#define ELEMENT_TYPE2 short
#define ROLL_TIMES 256

struct str {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b;
};

struct str2 {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b;
};

struct str data;
struct str2 data2;

void init() {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    data.a[i] = 0;
  }
}

void sub() {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    data.a[i] = data2.b;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE2 ans,master;
  long i;

  master = 0;
  ans = 0;
  init();

  data2.b = (ROLL_TIMES-1) + (ROLL_TIMES-1);
  sub();

  for (i=0; i<ROLL_TIMES; i++) {
    master += data2.b;
    ans += data.a[i];
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

