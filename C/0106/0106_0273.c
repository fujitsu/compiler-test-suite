#include <stdio.h>

int main() {
  unsigned long int a[1000], b[1000];
  int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=990; i>2; i--) {
    a[i] = b[i+9]+b[i-3]+b[i+6]+b[i]+b[i-2]+b[i+8]+b[i+7]+b[i-1];
  }
  if (a[100] == b[109]+b[97]+b[106]+b[100]+b[98]+b[108]+b[107]+b[99]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
