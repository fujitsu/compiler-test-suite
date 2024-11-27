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

void init(double _Complex *a,double _Complex *b,double _Complex *c,double _Complex *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i+1;
    res[i] = b[i] / c[i] ;
  }
}

void test(double _Complex *a,double _Complex *b,double _Complex *c) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = b[i] / c[i];
  }
  PA_STOP
}

MAIN() {
  double _Complex a[n],b[n],c[n],res[n];
  int i;
  init (a,b,c,res);
  for (i = 0;i < 2;i++ ) {
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
