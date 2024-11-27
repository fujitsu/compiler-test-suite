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

void init(signed int *a,signed int *b,signed int *c,signed int *res) {
  signed int i;
  signed int nn = 0;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    if (i < n/2) {
      c[i] = i;
      res[i] = i + 2;
    } else {
      c[i] = i;
      res[i] = i - 3;
    }
    res[n/2] = (n/2) + 2;
  }
}

void test(signed int *a,signed int *b,signed int *c) {
  signed int i,nn;
  PA_START
  for(i = 0;i < n;i++ ) {
    if (b[i] < n/2 || b[i] == n/2) {
      nn = c[i] + 2;
    } else {
      nn = c[i] - 3;
    }
    a[i] = nn;
  }
  PA_STOP
}

MAIN() {
  signed int a[n],b[n],c[n],nn,res[n];
  signed int i;
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
