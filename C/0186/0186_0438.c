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
  

  for(i=0;i<N;++i) {
    if(x[i] > y[i]) {
      a[i] = c[i];
    }
  }
}

void test(void) {
  int i;
  
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(x[i] > y[i]) {
      res[i] = c[i];
    }
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
    b[i] = cos(i*71.3) + sin(i*2.2)*1.1;
    c[i] = sin(i*1.5)*cos(i*2.2) - cos(i*0.1);
    res[i] = 0;
    x[i] = sin(i*10.333);
    y[i] = cos(i*20.333);
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
