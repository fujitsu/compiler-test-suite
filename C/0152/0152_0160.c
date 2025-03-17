#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[50],b[50];
  double bmax=0.0;
  for (k=0; k<50; k++) {
    a[k] = k;
    b[k] = 0.0;
  }

  for(k=0; k<50; k++) {
    bmax = b[5];
    if (bmax<a[k]) {
      b[5] = a[k];
    }
  }
  printf("%lf\n",bmax);
  printf("%lf\n",b[5]);
}

int main() {
  foo();
  return 0;
}
