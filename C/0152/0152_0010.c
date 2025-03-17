

#include <stdio.h>

struct data {
  long int op2;
  long int ans_umin;
};

int main() {
  struct data test_data;
  test_data.op2 = -1;

  test_data.ans_umin  = (0-test_data.op2);

  if (test_data.ans_umin == 1) {
    printf("OK %d\n", test_data.ans_umin);
  } else {
    printf("NG %d\n", test_data.ans_umin);
  }
  return 1;
}
