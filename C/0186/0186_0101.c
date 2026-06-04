#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 signed int
#define ELEMENT_TYPE2 signed short
#define ROLL_TIMES 129

struct str {
  ELEMENT_TYPE1 x1;
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b;
  ELEMENT_TYPE1 x2;
  ELEMENT_TYPE2 x3;
};

struct str data;

void sub(ELEMENT_TYPE1 a[][2]) {
  long i,j;
  ELEMENT_TYPE1 tmp;
  tmp = 0;

  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<2; j++) {
      a[i][j] += data.b;
      tmp += data.b;
      a[i][j] += tmp;
    }
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 a[][2]) {
  long i,j;
  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<2; j++) {
      a[i][j] = 0;
    }
  }
  data.b = 1;
  data.x1 = 1;
  data.x2 = 2;
  data.x3 = 3;
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES][2];
  ELEMENT_TYPE2 ans,master;
  ELEMENT_TYPE1 tmp;
  
  long i,j;

  master = 0;
  ans = 0;
  init(a);
  sub(a);

  tmp = 0;
  for (i=0; i<ROLL_TIMES; i++) {
    for (j=0; j<2; j++) {
      master += data.b;
      tmp += data.b;
      master += tmp;
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

