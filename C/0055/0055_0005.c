#include <stdio.h>
#include <math.h>

void foo (long double *a, long double *b) {
  int i;
  for (i=0; i<10; i++) {
    a[i] = sqrtl(b[i]);
  }
}

int main() {
  long double a[10], b[10];
  int i;
  for (i=0; i<10; i++) {
    a[i] = b[i] = 100.0;
  }
  foo (a, b);
  for (i=0; i<10; i++) {
    if (a[i] != 10.0) {
      printf("NG %f\n", a[i]);
    }
  }
  printf("OK\n");
}

