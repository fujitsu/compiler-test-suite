#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ELEMENT_TYPE1 int
#define ELEMENT_TYPE2 double
#define ROLL_TIMES 256

struct data {
  ELEMENT_TYPE1 i_data;
  ELEMENT_TYPE2 d_data;
};

int sub(struct data *xxx, ELEMENT_TYPE2 *d_data) {
  struct data yyy;
  double ans1,ans2;
  yyy.i_data = 2;
  yyy.d_data = 2.0;
  ans1 = *d_data;
  *xxx = yyy;
  ans2 = *d_data;
  if (ans1 == 1.000000 && ans2 == 2.000000) {
    return 1;
  } else {
    return 0;
  }
}

int main() {
  struct data xxx;
  xxx.i_data = 1;
  xxx.d_data = 1.0;
  if (sub(&xxx, &(xxx.d_data)) == 1) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
