#include <stdio.h>
int main() {
  int i;
  int array1[20],array2[20],ans[20];
  for (i=0; i<20; i++) {
    array1[i] = 1;
    array2[i] = 2;
  }

  for (i=0; i<16; i++) {
    ans[i] = array1[i] + array2[i];
  }
  if (ans[3] == 3) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
