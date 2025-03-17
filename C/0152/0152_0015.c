#include <stdio.h>

int main() {
  long int ans_sra[100];
  long int value, i;

  for (i=0; i<100; i++) {
    value = 3;
    if ((i+2)%2 == 0) {
      value = 2;
    }
    ans_sra[i] = value << 2;
  }

  if (ans_sra[10] == 8 && ans_sra[11] == 12) {
    printf("OK %d %d\n",ans_sra[10], ans_sra[11]);
  } else {
    printf("NG %d %d\n",ans_sra[10], ans_sra[11]);
  }
  return 1;
}
