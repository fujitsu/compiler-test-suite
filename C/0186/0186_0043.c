#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 unsigned int
#define ELEMENT_TYPE2 long double
#define ROLL_TIMES 256

union uni1 {
  ELEMENT_TYPE1 a1[ROLL_TIMES];
  ELEMENT_TYPE2 b1[ROLL_TIMES];
};
union uni2 {
  ELEMENT_TYPE1 a2[ROLL_TIMES];
  ELEMENT_TYPE2 b2[ROLL_TIMES];
};

union uni1 *data1;
union uni2 *data2;


void sub(union uni1 *data1, union uni2 *data2) {
  long i;
  ELEMENT_TYPE1 tmp;
  for (i=0; i<ROLL_TIMES; i++) {
    tmp = 0;
    data1->a1[i] += data2->b2[i];
    tmp += data2->b2[i];
    data1->a1[i] += tmp;
  }
}

void init(union uni1 *data1, union uni2 *data2) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    data1->a1[i] = 0;
    data2->b2[i] = i+i;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE2 ans,master;
  long i;
  union uni1 data1;
  union uni2 data2;
  ELEMENT_TYPE1 tmp;

  master = 0;
  ans = 0;
  init(&data1, &data2);

  sub(&data1, &data2);

  for (i=0; i<ROLL_TIMES; i++) {
    tmp = 0;
    master += data2.b2[i];
    tmp += data2.b2[i];
    master += tmp;
    ans += data1.a1[i];
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

