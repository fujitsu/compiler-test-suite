#include <stdio.h>

int main() {
  double a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=3; i<=996; i++) {
    a[i]=c[i+3]+c[i]+b[i]+b[i-3]+c[i+1]+b[i-1]+c[i+2]+b[i-2];
  }
  if (a[100] == c[103]+c[100]+b[100]+b[97]+c[101]+b[99]+c[102]+b[98]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
