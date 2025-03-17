#include <stdio.h>

int main() {
  long int ans_sra[100];
  long int value1, value2, i;

  for (i=0; i<100; i++) {
    if ((i+1)%2 == 0) {
      value1 = 2;
      value2 = 2;
    } else {
      value1 = 3;
      value2 = 3;
    }
    ans_sra[i] = value1 << value2;
  }

  if (ans_sra[9] == 8) {
    printf("OK %d\n",ans_sra[9]);
  } else {
    printf("NG %d\n",ans_sra[9]);
  }
  return 1;
}
