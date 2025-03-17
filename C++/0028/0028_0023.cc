#include <stdio.h>

int main() {
  int a[1000], b[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=56; i<994; i++) {
    a[i] = b[i-50]+b[i+2]+b[i]+b[i-56]+b[i-52]+b[i+6];
  }
  if (a[100] == b[50]+b[102]+b[100]+b[44]+b[48]+b[106]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
