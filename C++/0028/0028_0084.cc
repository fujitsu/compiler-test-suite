#include <stdio.h>

int main() {
  double a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=974; i>=38; i--) {
    a[i] = b[i+24]+b[i-36]+b[i-35]+b[i+22]+b[i-38]+b[i+25]+b[i+23]+b[i-37];
  }
  if (a[100] == b[124]+b[64]+b[65]+b[122]+b[62]+b[125]+b[123]+b[63]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
