

#include <stdio.h>
#include <math.h>
#define n 31
int main() {
  double r8a[n];
  double r8b[n] = {10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                   10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                   10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                   10.2};
  double result8[n] = {10,-9,6,-5,2,-1,3,5,-8,9,
                       10,-9,6,-5,2,-1,3,5,-8,9,
                       10,-9,6,-5,2,-1,3,5,-8,9,
                       10};
  int i;
  for (i = 0;i < n;i++) {
    r8a[i] = 0;
  }
  for (i = 0;i < n;i++) {
    r8a[i] = floor(r8b[i]);
  }
  for (i = 0;i < n;i++) {
    if (r8a[i] != result8[i]) {
      goto NG;
    }
  }
  printf("OK\n");
  goto OK;
  NG: printf("NG\n");
  for (i = 0;i < n;i++) {
    printf("%f ",r8a[i]);
  }
  OK:;
}
