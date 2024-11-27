#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
int main()
{
  float _Complex a[16],b[16];
  double _Complex aa[16],bb[16];
  float          x[16]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
  float          y[16]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
  int i;
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    a[i] = 0;
    b[i] = i+i*I;
    aa[i] = 0;
    bb[i] = i+i*I;
  }
  for(i=0;i<16;i++) {
    a[i] = conjf(b[i]) ;
  }
  for(i=0;i<16;i++) {
    printf("%g  %g\n ",crealf(a[i]), cimagf(a[i]));
  }
  for(i=0;i<16;i++) {
    aa[i] = conj(bb[i]) ;
  }
  for(i=0;i<16;i++) {
    printf("%g  %g\n ",creal(aa[i]), cimag(aa[i]));
  }
}
