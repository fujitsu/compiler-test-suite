 

#include <stdio.h>

int bar(int a){
  return a;
}

void foo(int nrap, int n, double y[][100]) {
  int i, j, index;
  double c0 = 1.999;

  for (i = 0; i < nrap; ++i) {
    index = bar(i);
    for (j = 0; j < n; ++j) {
      y[j][index] = c0;
    }
  }
  return;
}

int main() {
  double a[100][100];
  int n = 100;
  foo(n, n, a);

  printf("ans = %.3f\n", a[99][99]);
  return 0;
}
