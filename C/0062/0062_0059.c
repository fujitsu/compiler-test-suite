#include "stdio.h"
#include "complex.h"
int main()
{
  double _Complex a[100],b[100];
  int i;

  for (i=0; i<100; i++) {
    a[i] = 1.0 + 1.0i;
    b[i] = 2.0 + 2.0i;
  }

  for (i=0; i<100; i++) {
    a[i] = a[i] + b[i];
  }

  printf("%lf %lf\n",creal(a[0]), cimag(a[0]));
  printf("%lf %lf\n",creal(a[49]), cimag(a[49]));
  printf("%lf %lf\n",creal(a[99]), cimag(a[99]));

  for (i=0; i<50; i++) {
    a[i] = a[i+50] + b[i];
  }

  printf("%lf %lf\n",creal(a[0]), cimag(a[0]));
  printf("%lf %lf\n",creal(a[49]), cimag(a[49]));
  printf("%lf %lf\n",creal(a[50]), cimag(a[50]));

  for (i=0; i<100; i+=4) {
    a[i] = a[i+1] + b[i];
  }

  printf("%lf %lf\n",creal(a[0]), cimag(a[0]));
  printf("%lf %lf\n",creal(a[2]), cimag(a[2]));
  printf("%lf %lf\n",creal(a[4]), cimag(a[4]));
}
