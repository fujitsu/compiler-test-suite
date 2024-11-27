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

void init(long double _Complex *a,long double _Complex *b,long double _Complex *c,long double _Complex *res) {

  for (int i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    res[i] = i + i ;
  }
}

void test(long double _Complex *a,long double _Complex *b,long double _Complex *c) {
  PA_START
  for(int i = 0;i < n;i++ ) {
    a[i] = b[i] + c[i];
  }
  PA_STOP
}

MAIN() {
  long double _Complex a[n],b[n],c[n],res[n];
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
