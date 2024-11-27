#include <stdio.h>

int main() {
  long int a[1000], b[1000], i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=0; i<997; i++) {
    a[i] = b[i+2]+b[i+3]+b[i];
  }
  if (a[100] == b[102]+b[103]+b[100]) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 1;
}
