#include <stdio.h>

int main() {
  float a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=997; i>=2; i--) {
    a[i] = b[i-2]+b[i]+b[i+2]+c[i];
  }
  if (a[100] == b[98]+b[100]+b[102]+c[100]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
