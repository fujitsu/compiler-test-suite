#include <stdio.h>

int main() {
  long int a[1000], b[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=51; i<998; i++) {
    a[i] = b[i-49]+b[i+1]+b[i-1]+b[i-50]+b[i+2]+b[i]+b[i-51]+b[i-48];
  }
  if (a[100] == b[51]+b[101]+b[99]+b[50]+b[102]+b[100]+b[49]+b[52]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
