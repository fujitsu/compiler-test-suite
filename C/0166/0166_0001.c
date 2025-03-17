#include <stdio.h>
int main() {
  int i,j;
  double a[100];
  for (i=0; i<100; ++i) {
    a[i] = 0.;
  }
  for (i=1; i<100; ++i) {
    a[i] = a[i-1] + (double)i;
  }
  if (a[30]==465.) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n",a[30]);
  }
}
