#include <stdio.h>

int main() {
  float a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=971; i>=41; i--) {
    a[i] = b[i-41]+b[i+22]+b[i-35]+b[i+28];
  }
  if (a[100] == b[59]+b[122]+b[65]+b[128]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
