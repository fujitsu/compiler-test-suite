#include <stdio.h>

int main() {
  double a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=996; i>=3; i--) {
    a[i] = b[i-2]+c[i+1]+c[i+3]+b[i]+b[i-3]+c[i]+b[i-1]+c[i+2];
  }
  if (a[100] == b[98]+c[101]+c[103]+b[100]+b[97]+c[100]+b[99]+c[102]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
