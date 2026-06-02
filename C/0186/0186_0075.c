#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 long
#define ELEMENT_TYPE2 float
#define ROLL_TIMES 256

struct blank_str1 {
};

struct str {
  ELEMENT_TYPE1 a[ROLL_TIMES];
  ELEMENT_TYPE2 b[ROLL_TIMES];
};

struct blank_str2 {
};

struct blank_str1 *blank_data1;
struct str *data;
struct blank_str2 *blank_data2;

void sub(struct str *data, struct blank_str1 *blank_data1, struct blank_str2 *blank_data2) {
  long i;
  ELEMENT_TYPE1 tmp;
  tmp = 0;
  for (i=0; i<ROLL_TIMES; i++) {
    data->a[i] += data->b[ROLL_TIMES-1];
    tmp += data->b[ROLL_TIMES-1];
    data->a[i] += tmp;
  }
}

void init(struct str *data, struct blank_str1 *blank_data1, struct blank_str2 *blank_data2) {
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
  struct blank_str1 blank_data1;
  struct str data;
  struct blank_str2 blank_data2;
  ELEMENT_TYPE1 tmp;

  master = 0;
  ans = 0;
  tmp = 0;
  init(&data, &blank_data1, &blank_data2);

  sub(&data, &blank_data1, &blank_data2);

  for (i=0; i<ROLL_TIMES; i++) {
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

