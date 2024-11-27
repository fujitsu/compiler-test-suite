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

void init(signed int *nn,signed int *mm,signed int *b,signed int *c,signed int *res1,signed int *res2) {
  int i;
  nn[0] = 10;
  mm[0] = 20;
  res1[0] = 10;
  res2[0] = 20;

  for (i = 0; i < n; i++) {
    b[i] = i;
    c[i] = i;
    if (i < n/2) {
      res1[0] = res1[0] + i;
    } else {
      res2[0] = res2[0] + i;
    }
  }
}

void test(signed int *nn,signed int *mm,signed int *b,signed int *c) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if (b[i] < n/2) {
      nn[0] = nn[0] + c[i];
    } else {
      mm[0] = mm[0] + c[i];
    }
  }
  PA_STOP
}

MAIN() {
  signed int nn[1],mm[1],b[n],c[n],res1[1],res2[1];
  int i;
  for (i = 0;i < 2;i++ ) {
    init (nn,mm,b,c,res1,res2);
    test (nn,mm,b,c);
  }
  for (i = 0;i < n;i++) {
    if (nn[0] != res1[0] && mm[0] != res2[0]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
