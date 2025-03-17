#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[50];
  double bmax=0.0;
  double tmax=0.0;
  double x=0.0;
  for (k=0; k<50; k++) {
    a[k] = k;
  }


  for(k=0; k<50; k++) {
    bmax = tmax;
    x = bmax - a[k];
    if (x<0.0) {
      tmax = a[k];
    }
  }
  printf("%lf\n",bmax);
  printf("%lf\n",tmax);
  printf("%lf\n",x);
}

int main() {
  foo();
  return 0;
}
