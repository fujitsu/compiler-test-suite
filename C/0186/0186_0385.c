#include <stdio.h>
#include <math.h>
#include <complex.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

float _Complex a[N],b[N],c[N],res[N];

void sub(void) {
  int i,j;
  j = 0;

  for(i=0;i<N;++i) {
    if(creal(c[i]) > creal(b[i])) {
      a[j] = c[i];
      j = j + 1;
    }
  }
}

void test(void) {
  int i,j;
  j = 0;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(creal(c[i]) > creal(b[i])) {
      res[j] = c[i];
      j = j + 1;
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
    b[i] = cos(i*1.3) + sin(i*0.3)*I;
    c[i] = sin(i*1.5)*cos(i*5.2) + i*0.001*I;
    res[i] = 0;
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
