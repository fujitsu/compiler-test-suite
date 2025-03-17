#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[50];
  double bmax=0.0;
  double tmax=0.0;
  for (k=0; k<50; k++) {
    a[k] = k;
  }

  for(k=0; k<50; k++) {
    bmax = tmax;
    if (bmax<a[k]) {
      tmax = a[k];
    }
  }
  printf("%lf\n",bmax);
  printf("%lf\n",tmax);
}

int main() {
  foo();
  return 0;
}
