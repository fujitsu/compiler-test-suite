#include <stdio.h>

int main() {
  long int ans_umin[100];
  long int value1, value2, i;
  
  for (i=0; i<100; i++) {
    value2 = 0;
    if ((i+2)%2 == 0) {
      value1 = -1;
    } else {
      value1 = -2;
    }
    ans_umin[i] = value2 - value1;
  }

  if (ans_umin[10] == 1 && ans_umin[11] == 2) {
    printf("OK %d %d\n",ans_umin[10], ans_umin[11]);
  } else {
    printf("NG %d %d\n",ans_umin[10], ans_umin[11]);
  }
  return 1;
}
