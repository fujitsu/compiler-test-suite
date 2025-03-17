

#include <stdio.h>

int main() {
  long int ans_sra;
  long int op2;
  
  op2 = 1;

  ans_sra = op2 << 2;


  if (ans_sra == 4) {
    printf("OK %d\n",ans_sra);
  } else {
    printf("NG %d\n",ans_sra);
  }
  return 1;
}
