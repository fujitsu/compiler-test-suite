#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 float
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

void sub(ELEMENT_TYPE1 *a) {
  long i;
  ELEMENT_TYPE1 tmp;
  tmp = 0;
#pragma omp parallel for
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] += data.b;
    tmp += data.b;
    a[i] += tmp;
  }
}

#ifndef ASM_ONLY
void init(ELEMENT_TYPE1 *a) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    a[i] = 0;
    data.a[i] = 1;
  }
  data.b = 1;
  data.x1 = 1;
  data.x2 = 2;
  data.x3 = 3;
}

int main() {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 ans,master;
  ELEMENT_TYPE1 tmp;
  
  long i;

  master = 0;
  ans = 0;
  init(a);
  sub(a);

  tmp = 0;
  for (i=0; i<ROLL_TIMES; i++) {
    master += data.b;
    tmp += data.b;
    master += tmp;
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

