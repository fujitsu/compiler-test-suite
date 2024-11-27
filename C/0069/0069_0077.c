

#include <stdio.h>

int main(void)
{
  int a[200], b[100], c[100];
  int i;
  int *p, *q;
  for (i=0; i<200; i++) {
    a[i] = i;
  }
  p = a;
  for (i=0; i<100; i++) {
    b[i] = *p;
    p += 2;
  }
  q = a;
#pragma omp simd linear(q:2)
  for (i=0; i<100; i++) {
    c[i] = *q;
    q += 2;
  }
  for (i=0; i<100; i++) {
    if (b[i] != c[i]) break;
  }
  if (p != q) {
    printf("NG");
    return 1;
  }
  if (i != 100) {
    printf("NG %d %d %d\n", i, b[i], c[i]);
    return 1;
  } else {
    printf("OK\n");
    return 0;
  }
}
