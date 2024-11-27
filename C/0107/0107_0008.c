#include <stdio.h>
#include <complex.h>

#define N 1024
void test(float _Complex * restrict x,
          float _Complex * restrict y,
          float _Complex * restrict z, int * restrict c) {
  int i;

  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      z[i] = x[i] + y[i];
    } else {
      z[i] = x[i];
    }
  }
}
void init(float _Complex * restrict x,
          float _Complex * restrict y,
          float _Complex * restrict z,
          int * restrict c) {
  int i;
#pragma clang loop vectorize(disable)
  for(i = 0;i < N; i++) {
    z[i] = 0+0*I;
    x[i] = i+i*I;
    y[i] = 2*i+2*i*I;
    c[i] = i%3;
  }
}
void check(float _Complex * restrict z) {

  int i;
#pragma clang loop vectorize(disable)
  for(i = 0;i < N; i++) {
    if(i%3==2) {
      if(creal(z[i]) != 3*i || cimag(z[i]) != 3*i) {
        printf("%d:(%lf %lf) != (%lf %lf) \n", i,
               creal(z[i]), cimag(z[i]), 3*i, 3*i);
      }
    } else {
      if(creal(z[i]) != i || cimag(z[i]) != i) {
        printf("%d:(%lf %lf) != (%lf %lf) \n", i,
               creal(z[i]), cimag(z[i]), i, i);
      }
    }
  }
}

int main(void) {
  float _Complex x[N], y[N], z[N];
  int c[N];
  init(x,y,z,c);
  test(x,y,z,c);
  check(z);
  puts("OK");

  return 0;
}
