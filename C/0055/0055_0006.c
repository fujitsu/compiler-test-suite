#include <stdio.h>
#include <math.h>

void foo (float *a, float *b) {
  int i;
  for (i=0; i<10; i++) {
    a[i] = sqrtf(b[i]);
  }
}

int main() {
  float a[10], b[10];
  int i;
  for (i=0; i<10; i++) {
    a[i] = b[i] = 0.0;
  }
  foo (a, b);
  for (i=0; i<10; i++) {
    if (a[i] != 0.0) {
      printf("NG %f\n", a[i]);
    }
  }
  printf("OK\n");
}

