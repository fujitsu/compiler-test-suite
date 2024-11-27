#include <stdio.h>
#include <math.h>

int main() {
  int i;
  double array1[20],ans[20];
  for (i=0; i<20; i++) {
    array1[i] = 2;
  }
  
  for (i=0; i<16; i++) {
    ans[i] = sqrt(array1[i]);
  }
  if (fabs(ans[3] - 1.414213562373095) < 0.00001) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
