#include <stdio.h>
#include <complex.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 float
#define ELEMENT_TYPE2 double
#define ROLL_TIMES 99

struct str {
  ELEMENT_TYPE1 complex a[ROLL_TIMES];
  ELEMENT_TYPE2 complex b[ROLL_TIMES];
};

struct str *data;


void sub(struct str *data) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    data->a[i] = data->b[ROLL_TIMES-1];
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
  
  
  master = 0;
  ans = 0;
  init(&data);

  sub(&data);

  for (i=0; i<ROLL_TIMES; i++) {
    master += data.b[ROLL_TIMES-1];
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

