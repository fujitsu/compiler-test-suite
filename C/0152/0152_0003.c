

#include <stdio.h>

int main() {
  long int ans_max, ans_min;
  long int op2, op3;
  
  op2 = 10;
  op3 =  5;

  ans_max  = (op2 > op3) ? op2 : op3;
  ans_min  = (op2 < op3) ? op2 : op3;

  if (ans_max == 10 && ans_min == 5) {
    printf("OK %d %d\n",ans_max, ans_min);
  } else {
    printf("NG %d %d\n",ans_max, ans_min);
  }
  return 1;
}
