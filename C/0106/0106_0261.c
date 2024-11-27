#include <stdio.h>

int main() {
  unsigned int a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }

  for (i=52; i<999; i++) {
    a[i] = b[i-52]+b[i]+b[i+1]+b[i-50]+b[i-51]+b[i-1]+b[i-2]+b[i-49];
  }

  if (a[100] == b[48]+b[100]+b[101]+b[50]+b[49]+b[99]+b[98]+b[51]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}
