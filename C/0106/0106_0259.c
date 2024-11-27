#include <stdio.h>

int main() {
  unsigned int a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }

  for (i=51; i<999; i++) {
    a[i] = b[i]+b[i+1]+b[i-50]+b[i-51];
  }

  if (a[100] == b[100]+b[101]+b[50]+b[49]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}
