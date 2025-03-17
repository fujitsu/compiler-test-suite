#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k,j,ecount;
  double a[50],b[50],c[50];

  for (k=0; k<50; k++) {
    a[k] = 1.0;
    b[k] = 2.0;
    c[k] = 3.0;
  }

  j=50;
  ecount=0;

  for(k=0; k<50; k+=2) {
    j = j - 1;
    a[j] = b[k];
    ecount = j;
    j = j - 1;
    a[j] = c[k];
  }
  printf("%lf\n",a[0]);
  printf("%lf\n",a[1]);
  printf("%d\n",ecount);
}

int main() {
  foo();
  return 0;
}
