#include <stdio.h>

int main() {
  long int ans_umin[100];
  long int value, i;

  for (i=0; i<100; i++) {
    if ((i+2)%2 == 0) {
      value = -1;
    }
    value = -2;
    ans_umin[i] = 0 - value;
  }
  
  if (ans_umin[10] == 2 && ans_umin[11] == 2) {
    printf("OK %d %d\n",ans_umin[10], ans_umin[11]);
  } else {
    printf("NG %d %d\n",ans_umin[10], ans_umin[11]);
  }
  return 0;
}
