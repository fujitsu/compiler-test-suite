#include <stdio.h>

int main() {
  int a[1000], b[1000], c[1000],i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }
  for (i=993; i>=0; i--) {
    a[i] = b[i+4]+c[i+2]+b[i]+b[i+2]+c[i]+b[i+6]+c[i+6]+c[i+4];
  }
  if (a[100] == b[104]+c[102]+b[100]+b[102]+c[100]+b[106]+c[106]+c[104]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
