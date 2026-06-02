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
  ELEMENT_TYPE2 b[ROLL_TIMES];
};

void init(struct str *xxx) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    xxx->a[i] = 0;
  }
  xxx->b[250] = (ROLL_TIMES-1) + (ROLL_TIMES-1);
}

void sub(struct str *xxx) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    xxx->a[i] = xxx->b[250];
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE2 ans,master;
  long i;
  struct str xxx;
  
  master = 0;
  ans = 0;
  init(&xxx);

  sub(&xxx);

  for (i=0; i<ROLL_TIMES; i++) {
    master += xxx.b[250];
    ans += xxx.a[i];
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif
