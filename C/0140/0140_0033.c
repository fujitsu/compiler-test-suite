#include <stdio.h>


#define ZERO 0.0
int main()
{
  int i, j;
  double a[50], b[50];
  double p=ZERO, q=ZERO;

  for (i=0; i<50; i++) {
    a[i] = (double)i/(double)5.0;
    b[i] = (double)i/(double)20.0;
  }


#pragma clang loop unroll_count(15)
  for (i=0; i<50; i++) {
    p = p + a[i];
  }


  for (i=0; i<50; i++) {
    q = q + b[i];
  }

  printf("sum1 = %lf\n", p);
  printf("sum2 = %lf\n", q);
}
