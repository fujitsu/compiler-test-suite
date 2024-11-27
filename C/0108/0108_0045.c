#include <stdio.h>
#include <complex.h>
#define N 64
float _Complex y[N];

void init(void) {
  int i;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    y[i] = 1.0+1.0I;
  }
}

void sub(void) {
  int i;
#pragma clang loop vectorize(enable)
#pragma clang loop unroll_count(4)
  for(i=0;i<N;++i) {
    y[i] = 0.0;
  }
}
void sum(void) {
  int i;
  double _Complex x;
  x = 0;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    x += y[i];
  }
  printf("%f %f\n", creal(x), cimag(x));
}

int main(void) {
  init();
  sub();
  sum();
  return 0;
}
