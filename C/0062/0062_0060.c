#include "stdio.h"
#include "complex.h"
int main()
{
  float _Complex a[100+2],b[100];
  int i;

  for (i=0; i<100; i++) {
    a[i] = 1.0 + 1.0i;
    b[i] = 2.0 + 2.0i;
  }

  for (i=0; i<100; i++) {
    a[i] = a[i+1] + b[i];
  }

  printf("%f %f\n",creal(a[0]), cimag(a[0]));
  printf("%f %f\n",creal(a[1]), cimag(a[1]));
  printf("%f %f\n",creal(a[2]), cimag(a[2]));

  for (i=0; i<50; i++) {
    a[i] = a[i+20] + b[i];
  }

  printf("%f %f\n",creal(a[0]), cimag(a[0]));
  printf("%f %f\n",creal(a[20]), cimag(a[20]));
  printf("%f %f\n",creal(a[50]), cimag(a[50]));

  for (i=0; i<100; i+=2) {
    a[i] = a[i+2] + b[i];
  }

  printf("%f %f\n",creal(a[0]), cimag(a[0]));
  printf("%f %f\n",creal(a[1]), cimag(a[1]));
  printf("%f %f\n",creal(a[2]), cimag(a[2]));
}
