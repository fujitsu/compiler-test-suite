#include <stdio.h>
#include <stdlib.h>
void foo() {
  int j=0,k=0;
  double a[50];
  double d1[50],d2[50];
  unsigned int n=1;
  for (k=0; k<50; k++) {
    a[k] = k;
    d1[k] = k;
    d2[k] = k;
  }

  for(j=1; j<50; j++) {
    a[j] = a[j-1] + d2[j];
    d1[n] = d1[n] + a[j];
    n = n + 1;
  }

  printf("%lf\n",a[10]);
  printf("%lf\n",d1[0]);
  printf("%lf\n",d1[1]);
}

void foo_ocl() {
  int j=0,k=0;
  double a[50];
  double d1[50],d2[50];
  unsigned int n=1;
  for (k=0; k<50; k++) {
    a[k] = k;
    d1[k] = k;
    d2[k] = k;
  }


  for(j=1; j<50; j++) {
    a[j] = a[j-1] + d2[j];
    d1[n] = d1[n] + a[j];
    n = n + 1;
  }

  printf("%lf\n",a[10]);
  printf("%lf\n",d1[0]);
  printf("%lf\n",d1[1]);
}

int main() {
  foo();
  foo_ocl();
  return 0;
}
