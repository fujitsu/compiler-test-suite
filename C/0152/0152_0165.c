#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[50];
  double tmax=0.0;
  int bind = 0;
  int tind = 0;
  for (k=0; k<50; k++) {
    a[k] = k;
  }

  for(k=0; k<50; k++) {
    bind = tind;
    if (tmax<a[k]) {
      tmax = a[k];
      tind = k;
    }
  }
  printf("%lf\n",tmax);
  printf("%d\n",bind);
  printf("%d\n",tind);
}

int main() {
  foo();
  return 0;
}
