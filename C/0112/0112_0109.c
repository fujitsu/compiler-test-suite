#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
int main()
{
  float _Complex a[16],b[16];
  double _Complex aa[16],bb[16];
  int i;
#pragma clang loop vectorize(disable)
  for(i=1;i<=16;i++) {
    a[i-1] = 0;
    b[i-1] = i+i*I;
    aa[i-1] = 0;
    bb[i-1] = i+i*I;
  }
  for(i=0;i<16;i++) {
    a[i] = csqrtf(b[i]);
  }
  for(i=0;i<16;i++) {
    printf("%f  %f\n ",crealf(a[i]), cimagf(a[i]));
  }
  printf("\n");

  for(i=0;i<16;i++) {
    aa[i] = csqrt(bb[i]) ;
  }
  for(i=0;i<16;i++) {
    printf("%g  %g\n ",creal(aa[i]), cimag(aa[i]));
  }
  printf("\n");

  for(i=0;i<16;i++) {
    a[i] = cexpf(b[i]);
  }
  for(i=0;i<16;i++) {
    printf("%f  %f\n ",crealf(a[i]), cimagf(a[i]));
  }
  printf("\n");

  for(i=0;i<16;i++) {
    aa[i] = cexp(bb[i]) ;
  }
  for(i=0;i<16;i++) {
    printf("%g  %g\n ",creal(aa[i]), cimag(aa[i]));
  }
  printf("\n");

  for(i=0;i<16;i++) {
    a[i] = clogf(b[i]);
  }
  for(i=0;i<16;i++) {
    printf("%f  %f\n ",crealf(a[i]), cimagf(a[i]));
  }
  printf("\n");
  for(i=0;i<16;i++) {
    aa[i] = clog(bb[i]) ;
  }
  for(i=0;i<16;i++) {
    printf("%g  %g\n ",creal(aa[i]), cimag(aa[i]));
  }


}
