

#include <stdio.h>

struct data {
  long int op2;
  long int op3;
  long int ans_add;
  long int ans_sub;
  long int ans_mult;
};

int main() {
  struct data test_data;
  test_data.op2 = 10;
  test_data.op3 =  5;

  test_data.ans_add  = test_data.op2 + test_data.op3;
  test_data.ans_sub  = test_data.op2 - test_data.op3;
  test_data.ans_mult = test_data.op2 * test_data.op3;

  if (test_data.ans_add == 15 &&
      test_data.ans_sub == 5  &&
      test_data.ans_mult == 50) {
    printf("OK %d %d %d\n", 
	   test_data.ans_add,
	   test_data.ans_sub,
	   test_data.ans_mult);
  } else {
    printf("NG %d %d %d\n",
	   test_data.ans_add,
	   test_data.ans_sub,
	   test_data.ans_mult);
  }
  return 1;
}
