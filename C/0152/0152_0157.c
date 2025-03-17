#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[50];
  double btotal=0.0;
  double total=0.0;
  for (k=0; k<50; k++) {
    a[k] = k;
  }

  for(k=0; k<50; k++) {
    btotal = total;
    total = btotal + a[k];
  }
  printf("%lf\n",btotal);
  printf("%lf\n",total);
}

int main() {
  foo();
  return 0;
}
