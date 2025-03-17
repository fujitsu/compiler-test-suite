

#include <stdio.h>

struct data {
  long int op2;
  long int op3;
  long int ans_max;
  long int ans_min;
};

int main() {
  struct data test_data;
  test_data.op2 = 10;
  test_data.op3 =  5;

  test_data.ans_max  = (test_data.op2 > test_data.op3) ?
    test_data.op2 : test_data.op3;
  test_data.ans_min  = (test_data.op2 < test_data.op3) ?
    test_data.op2 : test_data.op3;
  
  if (test_data.ans_max == 10 && test_data.ans_min == 5) {
    printf("OK %d %d\n", test_data.ans_max, test_data.ans_min);
  } else {
    printf("NG %d %d\n", test_data.ans_max, test_data.ans_min);
  }
  return 1;
}
