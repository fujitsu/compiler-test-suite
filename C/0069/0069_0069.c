

#include <stdio.h>

int main(void)
{
  int a[100], b[100];
  int i;
  for (i=0; i<100; i++) {
    a[i] = i;
  }

#pragma omp for simd
  for (i=0; i<100; i++) {
    b[i] = i;
  }
  for (i=0; i<100; i++) {
    if (a[i]!=b[i]) break;
  }
  if (i!=100) {
    printf("NG %d %d %d\n", i, a[i], b[i]);
    return 1;
  } else {
    printf("OK\n");
    return 0;
  }
}
