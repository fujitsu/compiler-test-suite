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

void init(float *a,float *res) {

  for (int i = 0; i < n; i++) {
    a[i] = 0;
    res[i] = 1;
  }
}

void test(float *a) {
  PA_START
  for(int i = 0;i < n;i++ ) {
    a[i] = 1;
  }
  PA_STOP
}

MAIN() {
  float a[n],res[n];
  int i;
  init (a,res);
  for (int i = 0;i < 2;i++ ) {
    test (a);
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
