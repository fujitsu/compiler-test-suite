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

void init(double *a,unsigned char *b,unsigned char *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = i;
    b[i] = 0;
    res[i] = i;
  }
}

void test(double *a,unsigned char *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    b[i] = (unsigned char)a[i];
  }
  PA_STOP
}

MAIN() {
  double a[n];
  unsigned char b[n],res[n];
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
