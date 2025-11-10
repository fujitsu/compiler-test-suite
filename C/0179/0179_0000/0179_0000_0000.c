#include <stdio.h>
extern double r;

void sub(double a[], int n) 
{
  int i;

  for (i=0; i<n; ++i) {
    a[i] = (double)i/1000.0;
  }

  r = 0.;
  for (i=0; i<n; ++i) {
    r = r + a[i];
  }

  if (r == 0.0) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n", r);
  }
}

