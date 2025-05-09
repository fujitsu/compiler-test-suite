
#include <stdlib.h>
#include <stdio.h>
#include <complex.h>

#define MAIN int main
#define OK_PRINT puts("OK")
#define ERROR_PRINT puts("NG")
#define PA_START
#define PA_STOP

#if defined(NOMOD)
#define n 64
#else
#define n 65
#endif

void init(float _Complex *a,float _Complex b[][n],float _Complex *res) {
  int i,j;

  for(i=0;i<n;i++) {
    a[i] = 0.0;
    res[i] = 0.0;
  }

  for(i=0;i<n;i++) {
    res[i] = (i * n) * 2;
    for(j=0;j<n;j++) {
      b[i][j] = i;
    }
  }
}

void test(float _Complex *a,float _Complex b[][n]) {
  int i,j;
  PA_START
  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i] = a[i] + b[i][j];
    }
  }
  PA_STOP
}

MAIN() {
  float _Complex a[n],b[n][n],res[n];
  int i,j;
  init (a,b,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b);
  }
  for (i = 0;i < n;i++) {
    if (a[i] != res[i]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
