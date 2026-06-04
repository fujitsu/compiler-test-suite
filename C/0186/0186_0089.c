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

void sub(ELEMENT_TYPE1 *a, ELEMENT_TYPE2 *b, ELEMENT_TYPE1 *c, int x, int y) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    if (x == y) {
      a[i] = b[i];
    } else {
      c[i] = b[i];
    }
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 *a, ELEMENT_TYPE2 *b, ELEMENT_TYPE1 *c) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
    b[i] = i; 
    c[i] = 0; 
  }
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES];
  ELEMENT_TYPE1 c[ROLL_TIMES];
  long i;

  init(a,b,c);
  sub(a,b,c,1,1);

  for (i=0; i<ROLL_TIMES; i++) {
    if (a[i] != b[i]) {
      PRINT_NG;
    }
    if (c[i] != 0) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif

