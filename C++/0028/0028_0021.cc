#include <stdio.h>

int main() {
  int a[1000], b[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=0; i<994; i++) {
    a[i] = b[i+2]+b[i]+b[i+6]+b[i+4];
  }
  if (a[100] == b[102]+b[100]+b[106]+b[104]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
