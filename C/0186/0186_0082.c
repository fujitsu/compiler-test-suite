#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 signed long long
#define ELEMENT_TYPE2 signed long long
#define ROLL_TIMES 99

struct str {
  ELEMENT_TYPE1 x1;
  ELEMENT_TYPE2 b;
  ELEMENT_TYPE2 c;
  ELEMENT_TYPE1 x2;
  ELEMENT_TYPE2 x3;
};

struct str data;

void sub(ELEMENT_TYPE1 *a, ELEMENT_TYPE1 *c, int x, int y) {
  long i;

  for (i=0; i<ROLL_TIMES; i++) {
    if (x == y) {
      a[i] = data.b;
    } else {
      c[i] = data.c;
    }
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 *a, ELEMENT_TYPE1 *c) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
    c[i] = 0; 
  }
  data.b = (ROLL_TIMES / 2)+1;
  data.c = (ROLL_TIMES / 2)+2;
  data.x1 = 1;
  data.x2 = 2;
  data.x3 = 3;
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE1 c[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  long i;

  master = 0;
  ans = 0;
  init(a,c);
  sub(a,c,1,1);

  for (i=0; i<ROLL_TIMES; i++) {
    master += data.b;
    ans += a[i];
    if (c[i] != 0) {
      PRINT_NG;
    }
  }
  
  if (ans != master) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
#endif

