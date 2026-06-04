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
#define ROLL_TIMES 129

void sub(ELEMENT_TYPE1 a[ROLL_TIMES][ROLL_TIMES],
	 ELEMENT_TYPE2 b[ROLL_TIMES][ROLL_TIMES],
	 ELEMENT_TYPE1 c[ROLL_TIMES][ROLL_TIMES]) {
  long i,j;

  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<ROLL_TIMES; j++) {
      a[i][j] = b[i][j];
      c[i][j] = b[i][j];
    }
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 a[ROLL_TIMES][ROLL_TIMES],
	  ELEMENT_TYPE2 b[ROLL_TIMES][ROLL_TIMES],
	  ELEMENT_TYPE1 c[ROLL_TIMES][ROLL_TIMES]) {
  long i,j;
  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<ROLL_TIMES; j++) {
      a[i][j] = 0;
      b[i][j] = i;
      c[i][j] = 1;
    }
  }
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES][ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES][ROLL_TIMES];
  ELEMENT_TYPE1 c[ROLL_TIMES][ROLL_TIMES];
  long i,j;

  init(a,b,c);
  sub(a,b,c);

  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<ROLL_TIMES; j++) {
      if (a[i][j] != c[i][j]) {
	PRINT_NG;
      }
    }
  }

  PRINT_OK;
  return 0;
}
#endif

