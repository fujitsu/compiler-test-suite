#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[50];
  double b[50];
  double bmax=0.0;
  double x=0.0;
  for (k=0; k<50; k++) {
    a[k] = k;
    b[k] = 0.0;
  }


  for(k=0; k<50; k++) {
    bmax = b[5];
    x = bmax - a[k];
    if (x<0.0) {
      b[5] = a[k];
    }
  }
  printf("%lf\n",bmax);
  printf("%lf\n",b[5]);
  printf("%lf\n",x);
}

int main() {
  foo();
  return 0;
}
