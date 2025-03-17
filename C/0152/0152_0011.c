

#include <stdio.h>

int main() {
  long int ans_umin[1];
  long int array_ref2[1];

  array_ref2[0] = -1;

  ans_umin[0]  = (0-array_ref2[0]);

  if (ans_umin[0] == 1) {
    printf("OK %d\n", ans_umin[0]);
  } else {
    printf("NG %d\n", ans_umin[0]);
  }
  return 1;
}
