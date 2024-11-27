#include <stdio.h>

double a[100];
double b[100][15];
double x1[100];
double x2[100];
double x3[100];
double x4[100];
double x5[100];

void foo(int n) {
  int i;
  double c1,c2;

  c1 = 1.;
  c2 = 2.;

  for (i=0; i<n; i++) {
    a[i] = c1 + b[i][10] * (c2 + b[i][10]) + (x1[i]+x2[i]+x3[i]+x4[i]+x5[i]);
  }
}

int main() {
  int i,j;

  for (i=0; i<100; i++) {
    a[i] = 0.;
    x1[i] = 1.;
    x2[i] = 1.;
    x3[i] = 1.;
    x4[i] = 1.;
    x5[i] = 1.;
  }

  for (i=0; i<100; i++) {
    for (j=0; j<15; j++) {
      b[i][j] = 1.;
    }
  }

  foo(100);

  for (i=0; i<100; i++) {
    if (a[i] != 9.) {
      printf("NG\n"); 
    }
  }
  printf("OK\n"); 

  return 0;
}
