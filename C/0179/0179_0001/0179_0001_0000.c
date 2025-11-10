#include <stdio.h>
extern double r[100];

void sub(double a[], int n) 
{
  int i;

  for (i=0; i<n; ++i) {
    a[i] = (double)i/1000.0;
  }

  r[0] = 0.;
  for (i=0; i<n; ++i) {
    r[0] = r[0] + a[i];
  }

  if ((r[0] >= 4.945 && r[0] <= 4.954)
      && (r[99] >= 0.0985 && r[99] <= 0.0994)) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf, %lf\n", r[0], r[99]);
  }
}

