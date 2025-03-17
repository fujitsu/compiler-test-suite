

#include <stdio.h>

int main() {
  long int ans_add[1], ans_sub[1], ans_mult[1];
  long int array_ref2[1], array_ref3[1];

  array_ref2[0] = 10;
  array_ref3[0] =  5;

  ans_add[0]  = array_ref2[0] + array_ref3[0];
  ans_sub[0]  = array_ref2[0] - array_ref3[0];
  ans_mult[0] = array_ref2[0] * array_ref3[0];

  if (ans_add[0] == 15 && ans_sub[0] == 5  && ans_mult[0] == 50) {
    printf("OK %d %d %d\n", ans_add[0], ans_sub[0], ans_mult[0]);
  } else {
    printf("NG %d %d %d\n", ans_add[0], ans_sub[0], ans_mult[0]);
  }
  return 1;
}
