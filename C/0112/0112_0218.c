

#include <stdio.h>
#include <math.h>
#define n 31
int main() {
  float r4a[n];
  float r4b[n] = {10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                  10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                  10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                  10.2};
  float result4[n] = {10,-9,6,-5,2,-1,3,5,-8,9,
                      10,-9,6,-5,2,-1,3,5,-8,9,
                      10,-9,6,-5,2,-1,3,5,-8,9,
                      10};
  int i;
  for (i = 0;i < n;i++) {
    r4a[i] = 0.0;
  }
  for (i = 0;i < n;i++) {
    r4a[i] = floorf(r4b[i]);
  }
  for (i = 0;i < n;i++) {
    if (r4a[i] != result4[i]) {
      goto NG;
    }
  }
  printf("OK\n");
  goto OK;
  NG: printf("NG\n");
  for (i = 0;i < n;i++) {
    printf("%f ",r4a[i]);
  }
  OK:;
}
