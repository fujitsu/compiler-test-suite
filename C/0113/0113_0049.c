#include <stdio.h>
int main() 
{
  int i;
  double r, a[100];

  for (i=0; i<100; ++i) {
    a[i] = (double)i/1000.0;
  }

  r = 0.;
  for (i=0; i<100; ++i) {
    r = r + a[i];
  }

  if (r >= 4.940000 && r <= 4.960000) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n", r);
  }
}
