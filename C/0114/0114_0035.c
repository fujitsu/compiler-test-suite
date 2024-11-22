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

void init(unsigned long int *a,unsigned long int *b,unsigned long int *res) {

  for (int i = 0; i < n; i++) {
    a[i] = 0;
    res[i] = i;
    b[i] = i;
  }
}

void test(unsigned long int *a,unsigned long int *b) {
  PA_START
  for(int i = 0;i < n;i++ ) {
    a[i] = abs(b[i]);
  }
  PA_STOP
}

MAIN() {
  unsigned long int a[n],b[n],res[n];
  int i;
  init (a,b,res);
  for (int i = 0;i < 2;i++ ) {
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