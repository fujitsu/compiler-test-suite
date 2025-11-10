#include <stdio.h>

void calc(int a[3][3], int *det) {
  int i;
  for(i=0; i<3; ++i) {
    *det = *det + a[0][i] * (a[1][(i+1)%3] * a[2][(i+2)%3] - a[1][(i+2)%3] * a[2][(i+1)%3]);
  }
}

