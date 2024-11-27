#include <stdio.h>

int main() {
  unsigned long int a[1000], b[1000];
  int c[1000],i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=996; i>=0; i--) {
    a[i] = b[i]+b[i+3]+c[i]+b[i+1]+b[i+2];
  }
  if (a[100] == b[100]+b[103]+c[100]+b[101]+b[102]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
