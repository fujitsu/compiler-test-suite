#include <stdio.h>
int main() 
{
  int i;
  float *r, a[100];

  r = (float *)&i;
  for (i=0; i<100; ++i) {
    a[i] = (double)i/1000.0;
  }

  for (i=0; i<100; ++i) {
    *r = *r + a[i];
  }

  if (*r >= 0.0009 && *r <= 0.0011) {
    printf("ok\n");
  }
  else {
    printf("ng ... %f\n", *r);
  }
}
