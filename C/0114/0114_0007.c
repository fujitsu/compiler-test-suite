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

void init(signed int *nn,signed int *b,signed int *c,signed int *res) {
  signed int i;
  nn[0] = 0;
  res[0] = 0;

  for (i = 0; i < n; i++) {
    b[i] = i;
    c[i] = i;
    if (i < n/2) {
      res[0] = res[0] + i - 2;
    }
  }
}

void test(signed int *nn,signed int *b,signed int *c) {
  signed int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if (b[i] < n/2) {
      nn[0] = nn[0] + c[i] - 2;
    }
  }
  PA_STOP
}

MAIN() {
  signed int nn[1],b[n],c[n],res[1];
  signed int i;
  for (i = 0;i < 2;i++ ) {
    init (nn,b,c,res);
    test (nn,b,c);
  }
  for (i = 0;i < n;i++) {
    if (nn[0] != res[0]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
