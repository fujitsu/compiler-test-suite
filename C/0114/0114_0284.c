
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

void init(short int *a,short int *b,short int *c,short int *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    res[i] = 0;
  }  

  for (i = 0; i < n; i++) {
    b[i] = i;
    c[i] = i;
    res[i] = i * i * 2;
  }
}

void test(short int *a,short int *b,short int *c) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = a[i] + b[i] * c[i];
  }
  PA_STOP
}

MAIN() {
  short int a[n],b[n],c[n],res[n];
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
