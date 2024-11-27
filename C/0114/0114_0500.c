#include <stdlib.h>
#include <stdio.h>

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

void init(float *a,float *b,float *c,float *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    res[i] = 0;
  }

  for (i = 0; i < n; i++) {
    if (i < n/2) {
      res[2] = res[2] + c[5] + 3;
    }
  }
}

void test(float *a,float *b,float *c) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if (b[i] < n/2 ) {
      a[2] = a[2] + c[5] + 3 ;
    }
  }
  PA_STOP
}

MAIN() {
  float a[n],b[n],c[n],res[n];
  int i;
  for (i = 0;i < 2;i++ ) {
    init (a,b,c,res);
    test (a,b,c);
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
