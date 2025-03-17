

#include <stdio.h>

struct data {
  long int op2;
  long int ans_sra;
};

int main() {
  struct data test_data;
  test_data.op2 = 1;

  test_data.ans_sra  = test_data.op2 << 2;

  if (test_data.ans_sra == 4) {
    printf("OK %d\n", test_data.ans_sra);
  } else {
    printf("NG %d\n", test_data.ans_sra);
  }
  return 1;
}
