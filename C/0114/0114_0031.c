#include <math.h>
#include <stdio.h>
#include <stdlib.h>

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

void init(double *a,double *b,double *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    res[i] = i;
    if ( i < n/2) {
      b[i] = i;
    } else {
      b[i] = -i;
    }
  }
}

void test(double *a,double *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = abs(b[i]);
  }
  PA_STOP
}

MAIN() {
  double a[n],b[n],res[n];
  int i;
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
