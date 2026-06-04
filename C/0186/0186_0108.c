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
  ELEMENT_TYPE2 b[256];
};

struct data {
  struct str str_data;
};

void init(ELEMENT_TYPE1 *a) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
  }
}

void sub(ELEMENT_TYPE1 *a, struct data *xxx) {
  long i;
  for (i=0; i<256; i++) {
    a[i] = xxx->str_data.b[250];
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  long i;
  struct data xxx;

  master = 0;
  ans = 0;
  init(a);

  xxx.str_data.b[250] = (ROLL_TIMES-1) + (ROLL_TIMES-1);
  sub(a,&xxx);

  for (i=0; i<ROLL_TIMES; i++) {
    master += xxx.str_data.b[250];
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

