#include "stdio.h"
#include "complex.h"
int main()
{
  float _Complex a[100],b[100],c;
  int i;

  for (i=0; i<100; i++) {
    a[i] = 1.0 + 1.0i;
    b[i] = 2.0 + 2.0i;
  }

  c = 0.0 + 0.0i; 

  for (i=0; i<100; i++) {
    a[i] = a[5] + b[i];
  }

  printf("%f %f\n",creal(a[5]), cimag(a[5]));

  for (i=0; i<100; i+=2) {
    a[i] = a[5] + b[i];
  }

  printf("%f %f\n",creal(a[5]), cimag(a[5]));

  for (i=0; i<100; i++) {
    c = a[5] + b[i];
    a[i] = c + b[i];
  }

  printf("%f %f\n",creal(a[5]), cimag(a[5]));
  printf("%f %f\n",creal(c), cimag(c));
}
