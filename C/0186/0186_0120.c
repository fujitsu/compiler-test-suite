#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 int
#define ELEMENT_TYPE2 short
#define ROLL_TIMES 256

struct str {
  struct {
    ELEMENT_TYPE1 a[ROLL_TIMES];
    ELEMENT_TYPE2 b;
  } str_data;
};

struct str2 {
  struct {
    ELEMENT_TYPE1 a[ROLL_TIMES];
    ELEMENT_TYPE2 b;
  } str_data2;
};

struct str data;
struct str2 data2;

void init(struct str *xxx) {
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    xxx->str_data.a[i] = 0;
  }
}

void sub(struct str *xxx, struct str2 *xxx2) {
  long i;
  for (i=0; i<256; i++) {
    xxx->str_data.a[i] = xxx2->str_data2.a[250];
  }
}

#ifndef ASM_ONLY
int main() {
  ELEMENT_TYPE2 ans,master;
  long i;
  struct str xxx;
  struct str2 xxx2;

  master = 0;
  ans = 0;
  init(&xxx);

  xxx2.str_data2.a[250] = (ROLL_TIMES-1) + (ROLL_TIMES-1);
  sub(&xxx, &xxx2);

  for (i=0; i<ROLL_TIMES; i++) {
    master += xxx2.str_data2.a[250];
    ans += xxx.str_data.a[i];
  }
  
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

