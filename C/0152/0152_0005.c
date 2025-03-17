

#include <stdio.h>

int main() {
  long int ans_max[1], ans_min[1];
  long int array_ref2[1], array_ref3[1];

  array_ref2[0] = 10;
  array_ref3[0] =  5;

  ans_max[0]  = (array_ref2[0] > array_ref3[0]) ? 
    array_ref2[0] : array_ref3[0];
  ans_min[0]  = (array_ref2[0] < array_ref3[0]) ?
    array_ref2[0] : array_ref3[0];

  if (ans_max[0] == 10 && ans_min[0] == 5) {
    printf("OK %d %d\n", ans_max[0], ans_min[0]);
  } else {
    printf("NG %d %d\n", ans_max[0], ans_min[0]);
  }
  return 1;
}
