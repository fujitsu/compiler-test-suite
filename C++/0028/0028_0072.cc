#include <stdio.h>

int main() {
  float a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  for (i=56; i<998; i++) {
    a[i] = b[i-52]+b[i-4]+b[i-50]+b[i+2]+b[i]+b[i-56]+b[i-2]+b[i-54];
  }
  if (a[100] == b[48]+b[96]+b[50]+b[102]+b[100]+b[44]+b[98]+b[46]) {
    printf("OK\n");
  } else {
    printf("NG %f\n",a[100]);
  }
  return 1;
}
