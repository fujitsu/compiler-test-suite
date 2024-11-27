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

void init(char *a,char *b,char *res) {
  int i;

  for (i = 0; i < n; i++) {
    b[i] = 0;
    if (i < n/2) {
      a[i] = i + 1;
      res[i] = 0;
    } else {
      a[i] = i - 1;
      res[i] = i - 1;
    }      
  }
}

void test(char *a,char *b) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if ( a[i] >= i) continue;
    b[i] = a[i];
  }
  PA_STOP
}

MAIN() {
  char a[n],b[n],res[n];
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
