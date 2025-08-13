

#include <stdio.h>
#include <math.h>
#ifndef __USE_ISOC99


#include "000.h"
#endif
#define n 31
int main() {
  int i;
  float r4a[n];
  float r4b[n] = {10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                  10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                  10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
                  10.2};
  float result4[n] = {10.0,-8.0,6.0,-4.0,2.0,-1.0,3.0,5.0,-7.0,9.0,
                      10.0,-8.0,6.0,-4.0,2.0,-1.0,3.0,5.0,-7.0,9.0,
                      10.0,-8.0,6.0,-4.0,2.0,-1.0,3.0,5.0,-7.0,9.0,
                      10};
  for (i = 0;i < n;i++) {
    r4a[i] = 0.0;
  }
  for (i = 0;i < n;i++) {
    r4a[i] = truncf(r4b[i]);
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
