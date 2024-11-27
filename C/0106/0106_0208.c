#include <stdio.h>

int main() {
  float a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=0; i<998; i++) {
    a[i] = b[i+2]+b[i];
  }
  if (a[100] == b[102]+b[100]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
