

#include <stdio.h>

int main() {
  long int ans_sra[1];
  long int array_ref2[1];

  array_ref2[0] = 1;

  ans_sra[0]  = array_ref2[0] << 2;

  if (ans_sra[0] == 4) {
    printf("OK %d\n", ans_sra[0]);
  } else {
    printf("NG %d\n", ans_sra[0]);
  }
  return 1;
}
