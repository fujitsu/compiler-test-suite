#include <stdio.h>

int main() {
  unsigned long int a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }

  for (i=1; i<999; i++) {
    a[i] = b[i]+b[i+1]+b[i-1];
  }

  if (a[100] == b[99]+b[100]+b[101]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}
