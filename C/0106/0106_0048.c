#include <stdio.h>
int main() {
  int i;
  int array1[20], ans[20];
  for (i=0; i<20; i++) {
    array1[i] = 1;
  }

  for (i=0; i<16; i++) {
    ans[i] = ((array1[i] << 2) << (array1[i] << 2));
  }
  if (ans[3] == 64) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
