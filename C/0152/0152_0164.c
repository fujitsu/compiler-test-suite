#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[10],b[10];
  double btotal=0.0;
  for (k=0; k<10; k++) {
    a[k] = 2.0;
    b[k] = 1.0;
  }


  for(k=0; k<10; k++) {
    btotal = b[5];
    b[5] = btotal * a[k];
  }
  printf("%lf\n",btotal);
  printf("%lf\n",b[5]);
}

int main() {
  foo();
  return 0;
}
