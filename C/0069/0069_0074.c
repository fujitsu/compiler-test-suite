

#include <stdio.h>

int main(void)
{
  int a[100], b[100];
  int i,j,k;
  j=1;
  for (i=0; i<100; i++) {
    a[i] = j++;
  }
  k=1;
#pragma omp simd linear(k)
  for (i=0; i<100; i++) {
    b[i] = k++;
  }
  for (i=0; i<100; i++) {
    if (a[i] != b[i]) break;
  }
  if (j != k) {
    printf("NG j=%d k=%d\n", j, k);
    return 1;
  }
  if (i != 100) {
    printf("NG i=%d %d %d\n", a[i], b[i]);
    return 1;
  } else {
    printf("OK\n");
    return 0;
  }
}
