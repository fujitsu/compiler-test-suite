#include <stdio.h>

int main() {
  long int ans_sra[100];
  long int value, i;
  for (i=0; i<100; i++) {
    if ((i+2)%2 == 0) {
      value = 3;
    }
    value = 2;
    ans_sra[i] = value << 2;
  }
  if (ans_sra[10] == 8) {
    printf("OK %d\n",ans_sra[10] == 8);
  } else {
    printf("NG %d\n",ans_sra[10] == 8);
  }
  return 1;
}
