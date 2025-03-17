#include <stdio.h>

int main() {
  long int a[1000], b[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=990; i>=3; i--) {
    a[i] = b[i+9]+b[i+6]+b[i]+b[i-2]+b[i+8]+b[i-3];
  }
  if (a[100] == b[109]+b[106]+b[100]+b[98]+b[108]+b[97]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
