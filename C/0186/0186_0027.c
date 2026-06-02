#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 unsigned short
#define ELEMENT_TYPE2 unsigned int
#define ROLL_TIMES 256

struct str {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES];
};

struct str *data;


void sub(struct str *data) {
  long i;
  ELEMENT_TYPE1 tmp;
  for (i=0; i<ROLL_TIMES; i++) {
    tmp = 0;
    data->a[i] += data->b[ROLL_TIMES-1];
    tmp += data->b[ROLL_TIMES-1];
    data->a[i] += tmp;
  }
}

void init(struct str *data) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    data->a[i] = 0;
    data->b[i] = i+i;
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE2 ans,master;
  long i;
  struct str data;
  ELEMENT_TYPE1 tmp;

  master = 0;
  ans = 0;
  init(&data);

  sub(&data);

  for (i=0; i<ROLL_TIMES; i++) {
    tmp = 0;
    master += data.b[ROLL_TIMES-1];
    tmp += data.b[ROLL_TIMES-1];
    master += tmp;
    ans += data.a[i];
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

