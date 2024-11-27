#include <stdio.h>
#include <math.h>

int main() {
  int i;
  double array1[20],ans[20];
  for (i=0; i<20; i++) {
    array1[i] = -1.234;
  }
  
  for (i=0; i<16; i++) {
    ans[i] = fabs(array1[i]);
  }
  if (ans[3] == 1.234) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
