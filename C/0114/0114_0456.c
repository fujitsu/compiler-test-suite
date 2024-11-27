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

void init(int *a,int *b,int *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    res[i] = 2 ;
  }
}

void test(int *a,int *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = 2;
  }
  PA_STOP
}

MAIN() {
  int a[n],b[n],res[n];
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
