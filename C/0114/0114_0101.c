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

void init(long double *a,char *b,char *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = i;
    b[i] = 0;
    res[i] = i;
  }
}

void test(long double *a,char *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    b[i] = (char)a[i];
  }
  PA_STOP
}

MAIN() {
  long double a[n];
  char b[n],res[n];
  int i;
  init (a,b,res);
  for (int i = 0;i < 2;i++ ) {
    test (a,b);
  }
  for (i = 0;i < n;i++) {
    if (b[i] != res[i]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
