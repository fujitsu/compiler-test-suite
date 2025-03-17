#include <stdio.h>
#include <stdlib.h>
void foo() {
  int k;
  double a[10];
  double btotal=0.0;
  double total=1.0;
  for (k=0; k<10; k++) {
    a[k] = 2.0;
  }


  for(k=0; k<10; k++) {
    btotal = total;
    total = btotal * a[k];
  }
  printf("%lf\n",btotal);
  printf("%lf\n",total);
}

int main() {
  foo();
  return 0;
}
