#include <stdio.h>
int main() 
{
  int i;
  double r, a[100], t1;

  for (i=0; i<100; ++i) {
    a[i] = (double)i/1000.0;
  }

  r = 0.;
  t1 = 0.;
  for (i=0; i<100; ++i) {
    double t2,t3,t4,t5;
    t2 = r - t1;
    t3 = r - t1;
    t1 = t2 - t3 + r;
    t4 = t1 + a[i];
    t5 = t4 - 0.;
    r = t5;
  }

  if (r >= 4.940000 && r <= 4.960000) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n", r);
  }
}
