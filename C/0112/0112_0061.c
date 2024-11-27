#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
int main()
{
  float _Complex a[16],b[16],c[16];
  double _Complex aa[16],bb[16],cc[16];
  float          x[16]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
  float          xx[16]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
  int i;
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    a[i] = 0;
    c[i] = 2;
    cc[i] = 2;
    b[i] = i+i*I;
    aa[i] = 0;
    bb[i] = i+i*I;
  }
  for(i=0;i<16;i++) {
    x[i] = b[i] - c[i] ;
  }
  for(i=0;i<16;i++) {
    printf("%g  \n ",x[i]);
  }
  for(i=0;i<16;i++) {
    xx[i] = bb[i] - cc[i] ;
  }
  for(i=0;i<16;i++) {
    printf("%g  \n ",xx[i]);
  }
}
