#include <stdio.h>

double a[100];
double b[100][15];

void foo(int n) {
  int i;
  double c1,c2;

  c1 = 1.;
  c2 = 2.;

  for (i=0; i<n; i++) {
    a[i] = c1 + b[i][10] * (c2 + b[i][10]);
  }
}

int main() {
  int i,j;

  for (i=0; i<100; i++) {
    a[i] = 0.;
  }

  for (i=0; i<100; i++) {
    for (j=0; j<15; j++) {
      b[i][j] = 1.;
    }
  }

  foo(100);

  for (i=0; i<100; i++) {
    if (a[i] != 4.) {
      printf("NG\n"); 
    }
  }
  printf("OK\n"); 

  return 0;
}
