#include <stdio.h>
int main() 
{
  int i;
  double *r, *q, a[100];

  for (i=0; i<100; ++i) {
    a[i] = (double)i/1000.0;
  }

  q = &a[1];
  r = q;
  for (i=0; i<100; ++i) {
    *r = *r + a[i];
  }

  if (*r >= 4.940000 && *r <= 4.960000) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n", *r);
  }
}
