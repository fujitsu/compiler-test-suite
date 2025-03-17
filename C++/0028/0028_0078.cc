#include <stdio.h>

int main() {
  float a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=6; i<=993; i++) {
    a[i]=b[i-4]+c[i+6]+c[i]+b[i]+b[i-6]+c[i+2]+b[i-2]+c[i+4];
  }
  if (a[100] == b[96]+c[106]+c[100]+b[100]+b[94]+c[102]+b[98]+c[104]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
