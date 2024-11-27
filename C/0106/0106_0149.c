#include <stdio.h>

int main() {
  int a[1000], b[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=999; i>3; i--) {
    a[i] = b[i] + b[i-2] + b[i-4];
  }
  if (a[100] == b[100]+b[98]+b[96]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
