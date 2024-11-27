#include <stdio.h>

int main() {
  unsigned int a[1000], b[1000];
  int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=997; i>=4; i--) {
    a[i] = b[i-2]+b[i-4]+b[i]+b[i+2];
  }
  if (a[100] == b[98]+b[96]+b[100]+b[102]) {
    printf("OK\n");
  } else {
    printf("NG %d\n",a[100]);
  }
  return 1;
}
