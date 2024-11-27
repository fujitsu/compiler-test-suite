

#include <stdio.h>

int main(void)
{
  int a1[200], a2[200], b[100], c[100];
  int i;
  int *p1, *p2, *q1, *q2;
  for (i=0; i<200; i++) {
    a1[i] = i;
    a2[i] = 200 - i; 
  }
  p1 = a1;
  p2 = a2;
  for (i=0; i<100; i++) {
    b[i] = *p1 + *p2;
    p1+=2;
    p2+=2;
  }
  q1 = a1;
  q2 = a2;
#pragma omp simd linear(q1,q2:2)
  for (i=0; i<100; i++) {
    c[i] = *q1 + *q2;
    q1+=2;
    q2+=2;
  }
  for (i=0; i<100; i++) {
    if (b[i] != c[i]) break;
  }
  if ((p1 != q1) || (p2 != q2)) {
    printf("NG");
    return 1;
  }
  if (i != 100) {
    printf("NG\n");
    return 1;
  } else {
    printf("OK\n");
    return 0;
  }
}
