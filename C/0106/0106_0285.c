#include <stdio.h>

int main() {
  unsigned long int a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }

  for (i=53; i<997; i++) {
    a[i] = b[i+3]+b[i]+b[i+1]+b[i-50]+b[i-53]+b[i-51]+b[i-52]+b[i+2];
  }

  if (a[100] == b[103]+b[100]+b[101]+b[50]+b[47]+b[49]+b[48]+b[102]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}
