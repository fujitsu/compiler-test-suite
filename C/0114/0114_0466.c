
#include <stdio.h>
#include <limits.h>

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

void init(long int *a,long int *b,long int *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    if ( i < n/2) {
      res[i] = b[i] << 4;
    } else {
      res[i] = b[i] >> 3;
    }
  }
}

void test(long int *a,long int *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if (i < n/2) {
      a[i] = b[i] << 4;
    } else {
      a[i] = b[i] >> 3;
    }
  }
  PA_STOP
}

MAIN() {
  long int a[n],b[n],c[n],res[n];
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
