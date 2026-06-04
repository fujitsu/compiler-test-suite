#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 double
#define ELEMENT_TYPE2 double
#define ROLL_TIMES 99

void sub(ELEMENT_TYPE1 *a, ELEMENT_TYPE2 *b, ELEMENT_TYPE1 *c) {
  int i;

  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = b[i];
    c[i] = b[i];
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
  sub(a,b,c);

  for (i=0; i<ROLL_TIMES; i++) {
    if (a[i] != c[i]) {
      PRINT_NG;
    }
  }

  PRINT_OK;
  return 0;
}
#endif

