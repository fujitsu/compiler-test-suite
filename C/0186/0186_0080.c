#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 signed int
#define ELEMENT_TYPE2 signed int
#define ROLL_TIMES 99

void sub(ELEMENT_TYPE1 a[ROLL_TIMES][ROLL_TIMES], ELEMENT_TYPE2 b[ROLL_TIMES][ROLL_TIMES]) {
  long i,j;

  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<ROLL_TIMES; j++) {
      a[i][j] = b[3][3];
    }
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 a[ROLL_TIMES][ROLL_TIMES], ELEMENT_TYPE2 b[ROLL_TIMES][ROLL_TIMES]) {
  long i,j;
  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<ROLL_TIMES; j++) {
      a[i][j] = 0;
      b[i][j] = i;
    }
  }
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES][ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES][ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  long i,j;

  master = 0;
  ans = 0;
  init(a,b);
  sub(a,b);

  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<ROLL_TIMES; j++) {
      master += a[3][3];
      ans += a[i][j];
    }
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

