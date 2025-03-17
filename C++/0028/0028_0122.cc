#include <stdio.h>

int main() {
  unsigned int a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }

  for (i=16; i<1000; i++) {
    a[i] = b[i-10]+b[i-16]+c[i]+b[i-12];
  }

  if (a[100] == b[90]+b[84]+c[100]+b[88]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}
