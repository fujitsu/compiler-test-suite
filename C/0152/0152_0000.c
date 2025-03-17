
#include <stdio.h>

int main() {
  long int ans_add, ans_sub, ans_mult;
  long int op2, op3;
  
  op2 = 10;
  op3 =  5;

  ans_add  = op2 + op3;
  ans_sub  = op2 - op3;
  ans_mult = op2 * op3;

  if (ans_add == 15 && ans_sub == 5 && ans_mult == 50) {
    printf("OK %d %d %d\n",ans_add, ans_sub, ans_mult);
  } else {
    printf("NG %d %d %d\n",ans_add, ans_sub, ans_mult);
  }
  return 1;
}
