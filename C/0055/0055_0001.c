#include <stdio.h>
#include <math.h>
#include <complex.h>

void foo (float complex *a, float complex *b) {
  int i;
  for (i=0; i<10; i++) {
    a[i] = csqrtf(b[i]);
  }
}

int main() {
  float complex a[10], b[10];
  int i;
  for (i=0; i<10; i++) {
    a[i] = 0.0;
    b[i] = -0.0;
  }
  foo (a, b);
  for (i=0; i<10; i++) {
    if (a[i] != 0.0) {
      printf("NG %f\n", a[i]);
    }
  }
  printf("OK\n");
}

