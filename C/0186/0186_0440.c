#include <stdio.h>
#include <math.h>
#include <complex.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

double _Complex a[N],b[N],c[N],res[N];
double x[N],y[N];

void sub(void) {
  int i;
  double _Complex tmp = 0;

  for(i=0;i<N;++i) {
    if(x[i] > y[i]) {
      tmp = c[i];
    } else {
      tmp = b[i];
    }
    a[i] = tmp;
  }
}

void test(void) {
  int i;
  double _Complex tmp = 0;

#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(x[i] > y[i]) {
      tmp = c[i];
    } else {
      tmp = b[i];
    }
    res[i] = tmp;
  }
}

void check(void) {
  int i;
  for(i=0;i<N;++i) {
    if(a[i] != res[i]) {
      printf("%d (%f %f) (%f %f)\n",
             i, creal(res[i]),cimag(res[i]),
             creal(a[i]),cimag(a[i]));
    }
  }
  puts("OK");
}

void init(void) {
  int i;
  for(i=0;i<N;++i) {
    a[i] = 0;
    b[i] = cos(i*71.3)+sin(i*3.1)*I;
    c[i] = sin(i*1.5)*cos(i*2.2)+sin(2.0*i)*I;
    res[i] = 0;
    x[i] = sin(i*100.0);
    y[i] = cos(i*99.1+2);
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
