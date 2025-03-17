#include <stdio.h>

int main() {
  long int ans_sra[100];
  long int value, i;

  for (i=0; i<100; i++) {
    if ((i+1)%2 == 0) {
      value = 2;
    } else {
      value = 3;
    }
    ans_sra[i] = value << 2;
  }
  if (ans_sra[9] == 8) {
    printf("OK %d\n",ans_sra[9]);
  } else {
    printf("NG %d\n",ans_sra[9]);
  }
  return 1;
}
