#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
int main()
{
  float _Complex a[16],b[16],c[16];
  double _Complex aa[16],bb[16],cc[16];
  int i;
#pragma clang loop vectorize(disable)
  for(i=1;i<=16;i++) {
    a[i-1] = 0;
    b[i-1] = i+i*I;
    c[i-1] = 2+2*I;
    aa[i-1] = 0;
    bb[i-1] = i+i*I;
    cc[i-1] = 2+2*I;
  }
  for(i=0;i<16;i++) {
    a[i] = cpowf(b[i],c[i]);
  }
  for(i=0;i<16;i++) {
    printf("%f  %f\n ",crealf(a[i]), cimagf(a[i]));
  }
  printf("\n");

  for(i=0;i<16;i++) {
    aa[i] = cpow(bb[i],cc[i]);
  }
  for(i=0;i<16;i++) {
    printf("%f  %f\n ",creal(aa[i]), cimag(aa[i]));
  }
  printf("\n");


}
