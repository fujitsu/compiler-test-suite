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

void init(int *a,int *b,int *c,int *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    if ( i < n/2) {
      b[i] = i+1;
      c[i] = i;
      res[i] = i+1;
    } else {
      b[i] = i;
      c[i] = i-1;
      res[i] = i;
    }
  }
}

void test(int *a,int *b,int *c) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = b[i] > c[i] ? b[i] : c[i];
  }
  PA_STOP
}

MAIN() {
  int a[n],b[n],c[n],res[n];
  int i;
  init (a,b,c,res);
  for (int i = 0;i < 2;i++ ) {
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
