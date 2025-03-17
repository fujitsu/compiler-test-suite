#include <stdio.h>

int main() {
  unsigned long int a[1000], b[1000], c[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
    c[i] = i+1;
  }

  for (i=13; i<948; i++) {
    a[i] = b[i-10]+b[i-13]+c[i+51]+c[i+49]+b[i-11]+c[i+52];
  }

  if (a[100] == b[90]+b[87]+c[151]+c[149]+b[89]+c[152]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}
