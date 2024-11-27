#include <stdio.h>
#include <math.h>

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

void init(double *a,double *b,double *c,double *res) {

  for (int i = 0; i < n; i++) {
    a[i] = 0;
    if ( i < n/2 ) {
      b[i] = i+1;
      c[i] = i+1;
      res[i] = 1 ;
    } else {
      b[i] = -i;
      c[i] = -i;
      res[i] = 1 ;
    }
  }
}

void test(double *a,double *b,double *c) {
  PA_START
  for(int i = 0;i < n;i++ ) {
    a[i] = b[i] / c[i];
  }
  PA_STOP
}

MAIN() {
  double a[n],b[n],c[n],res[n];
  int i;
  init (a,b,c,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b,c);
  }
  for (i = 0;i < n;i++) {
    if (fabs(a[i] - res[i]) > 1.0e-13) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
