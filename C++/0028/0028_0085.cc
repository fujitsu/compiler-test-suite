#include <stdio.h>

int main() {
  double a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=999; i>=1; i--) {
    a[i] = b[i]+c[i]+b[i-1];
  }
  if (a[100] == b[100]+c[100]+b[99]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
