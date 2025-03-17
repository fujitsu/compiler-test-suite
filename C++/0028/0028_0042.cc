#include <stdio.h>

int main() {
  long int a[1000], b[1000], c[1000],i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=996; i>=0; i--) {
    a[i] = b[i+3]+c[i+2]+b[i]+b[i+2]+c[i]+c[i+3]+b[i+1]+c[i+1];
  }
  if (a[100] == b[103]+c[102]+b[100]+b[102]+c[100]+c[103]+b[101]+c[101]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
