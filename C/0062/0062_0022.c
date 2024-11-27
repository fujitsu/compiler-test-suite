#include <stdio.h>

#define NN 5
const int x = 2;
const int w[NN] = {1,2,3,4,5};
const int z = 0;

#define N 1500


void foo(int *a) {
  int i, j;
  for (i=0; i<100; ++i) {
#pragma clang loop unroll_count(NN)
    for (j=0; j<NN; ++j) {
      a[i] = a[i] + w[j];
    }
  }
}
extern void inita(int *a);
extern int suma(int *a);

int main(void) {
  int a[100], k;
  inita(a);
  foo(a);
  k = suma(a);
  if (k == N) {
    printf("ok: %d\n", k);
  } else {
    printf("ng: %d\n", k);
  }
  return 0;
}

void inita(int *a) {
  int i;
  for (i=0; i<100; ++i) {
    a[i] = z;
  }
}

int suma(int *a) {
  int i, k;
  k = 0;
  for (i=0; i<100; ++i) {
    k += a[i];
  }
  return k;
}
