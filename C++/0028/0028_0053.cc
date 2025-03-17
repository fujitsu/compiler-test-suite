#include <stdio.h>

int main() {
  long int a[1000], b[1000], c[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=3; i<997; i++) {
    a[i]=b[i-2]+c[i+3]+c[i]+b[i]+b[i-3]+c[i+1];
  }
  if (a[100] == b[98]+c[103]+c[100]+b[100]+b[97]+c[101]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
