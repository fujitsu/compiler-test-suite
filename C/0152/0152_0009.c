

#include <stdio.h>

int main() {
  long int ans_umin;
  long int op2;
  
  op2 = -1;

  ans_umin = 0-op2;


  if (ans_umin == 1) {
    printf("OK %d\n",ans_umin);
  } else {
    printf("NG %d\n",ans_umin);
  }
  return 1;
}
